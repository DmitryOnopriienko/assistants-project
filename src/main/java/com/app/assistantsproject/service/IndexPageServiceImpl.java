package com.app.assistantsproject.service;

import com.app.assistantsproject.entity.Assistance;
import com.app.assistantsproject.entity.Worker;
import com.app.assistantsproject.repository.AssistanceRepository;
import com.app.assistantsproject.repository.WorkerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexPageServiceImpl implements IndexPageService {

  private final AssistanceRepository assistanceRepository;

  private final WorkerRepository workerRepository;

  @Autowired
  public IndexPageServiceImpl(AssistanceRepository assistanceRepository, WorkerRepository workerRepository) {
    this.assistanceRepository = assistanceRepository;
    this.workerRepository = workerRepository;
  }

  @Override
  public List<Worker> getWorkers() {
    return workerRepository.findAll();
  }

  @Override
  public List<Assistance> getAssistance() {
    return assistanceRepository.findAll();
  }
}
