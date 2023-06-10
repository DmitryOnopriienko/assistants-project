package com.app.assistantsproject.service;

import com.app.assistantsproject.entity.Assistance;
import com.app.assistantsproject.entity.Worker;

import java.util.List;

public interface IndexPageService {
  List<Worker> getWorkers();

  List<Assistance> getAssistance();
}
