package com.docker.springboot.docker.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/demo")
public class DemoController {

  /**
   * This method handles GET requests for the demo endpoint.
   *
   * @return a string response
   */
  @GetMapping
  public String getDemo() {
    log.info("--getDemo(): Get demo controller....");
    return "This is a response from demo GET API";
  }

  /**
   * This method handles POST requests for the demo endpoint.
   *
   * @param file the uploaded file
   * @param name a string parameter
   * @return a string response
   */
  @PostMapping()
  public String getDemoPost(@RequestParam MultipartFile file, @RequestParam String name) {
    log.info("File name: {}", file.getOriginalFilename());
    log.info("Name: {}", name);
    return "This is a response from demo POST API";
  }
}
