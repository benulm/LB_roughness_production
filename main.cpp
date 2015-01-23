#include "driver.hpp"
#include "simulation.hpp"
#ifdef USE_OPENGL_VISUALIZATION
	#include "visualization.hpp"
#endif
#include <omp.h>



int main(int argc, char *argv[])
{


	double vmax, re, Hdivh;
	unsigned nx, h, d, w, pert;
	vmax = re = Hdivh = nx = h = d = w = pert = 0;

	if(argc < 9){
 		std::cout << "Call the programm: " << argv[0] << "[nx, Re, v_max, h(obstacle), H/h, width(obstacle), dist(obstacle), pertubation]" << std::endl; 
 		return 0;
	}
    else {
        nx = atoi(argv[1]);
        re = atof(argv[2]);
        vmax = atof(argv[3]);
        h = atoi(argv[4]);
        Hdivh = atoi(argv[5]);
        w = atoi(argv[6]);
        d = atoi(argv[7]);
        pert = atoi(argv[8]);
    } 

	omp_set_num_threads(std::max(omp_get_max_threads(),omp_get_num_procs()));
	lb::simulation* sim = new lb::simulation(nx,(unsigned) (Hdivh * h),vmax, re, h, w, d, pert);
	std::cout << *sim << std::endl;


	sim->initial_statistics_averaged();

	#ifdef USE_OPENGL_VISUALIZATION
	
		lb::visualization::initialize(sim,argc,argv);
		lb::visualization::get_instance().run();
	
	#else
	
		for (unsigned int i=1; i<1500; ++i){
			sim->step();
		}

#ifdef TIME_AVERAGE_
			for(unsigned i=0; i < sim->u_avged.size(); i++){
				sim->u_avged[i] /= sim->number_of_averaging_steps;
				sim->v_avged[i] /= sim->number_of_averaging_steps;
				sim->i_avged[i] /= sim->number_of_averaging_steps;
			}
			sim->print_averaged_statistics();
#endif // TIME_AVERAGE_


	
	#endif
	
	return 0;
}
