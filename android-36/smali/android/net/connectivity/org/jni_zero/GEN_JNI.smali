.class public Landroid/net/connectivity/org/jni_zero/GEN_JNI;
.super Ljava/lang/Object;
.source "GEN_JNI.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_ApplicationStatus_onApplicationStateChange(I)V
    .registers 1
    .param p0, "newState"    # I

    .line 10
    invoke-static {p0}, Landroid/net/connectivity/J/N;->Mfrpejoi(I)V

    .line 11
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_BaseFeatureMap_getNativeMap()J
    .registers 2

    .line 13
    invoke-static {}, Landroid/net/connectivity/J/N;->M4CBnF70()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CommandLine_appendSwitch(Ljava/lang/Object;)V
    .registers 1
    .param p0, "switchString"    # Ljava/lang/Object;

    .line 17
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MtAJxOnD(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CommandLine_appendSwitchWithValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "switchString"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 22
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MNKGeq4d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CommandLine_appendSwitchesAndArguments(Ljava/lang/Object;)V
    .registers 1
    .param p0, "array"    # Ljava/lang/Object;

    .line 26
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MRGgm0Xm(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CommandLine_getSwitchValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "switchString"    # Ljava/lang/Object;

    .line 30
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MpKDqvJc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CommandLine_getSwitchesFlattened()Ljava/lang/Object;
    .registers 1

    .line 33
    invoke-static {}, Landroid/net/connectivity/J/N;->M0RvGqaj()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CommandLine_hasSwitch(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "switchString"    # Ljava/lang/Object;

    .line 37
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MPiiSiez(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CommandLine_init(Ljava/lang/Object;)V
    .registers 1
    .param p0, "args"    # Ljava/lang/Object;

    .line 40
    invoke-static {p0}, Landroid/net/connectivity/J/N;->Mp_Bf7qr(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CommandLine_removeSwitch(Ljava/lang/Object;)V
    .registers 1
    .param p0, "switchString"    # Ljava/lang/Object;

    .line 44
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MrLIIZN_(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CpuFeatures_getCoreCount()I
    .registers 1

    .line 47
    invoke-static {}, Landroid/net/connectivity/J/N;->M58U6lZz()I

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_CpuFeatures_getCpuFeatures()J
    .registers 2

    .line 50
    invoke-static {}, Landroid/net/connectivity/J/N;->MXUVvXga()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyAsyncBeginEvent(Ljava/lang/Object;JJ)V
    .registers 5
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "id"    # J
    .param p3, "timeNanos"    # J

    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->Mhdyh0WN(Ljava/lang/Object;JJ)V

    .line 57
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyAsyncEndEvent(JJ)V
    .registers 4
    .param p0, "id"    # J
    .param p2, "timeNanos"    # J

    .line 61
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MmH1F_vE(JJ)V

    .line 62
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyBeginEvent(Ljava/lang/Object;JIJ)V
    .registers 6
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "timeNanos"    # J
    .param p3, "threadId"    # I
    .param p4, "threadMillis"    # J

    .line 68
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MaQDSkvN(Ljava/lang/Object;JIJ)V

    .line 69
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyEndEvent(Ljava/lang/Object;JIJ)V
    .registers 6
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "timeNanos"    # J
    .param p3, "threadId"    # I
    .param p4, "threadMillis"    # J

    .line 75
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MdiVY7jZ(Ljava/lang/Object;JIJ)V

    .line 76
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyToplevelBeginEvent(Ljava/lang/Object;JIJ)V
    .registers 6
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "timeNanos"    # J
    .param p3, "threadId"    # I
    .param p4, "threadMillis"    # J

    .line 82
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MvrncgGn(Ljava/lang/Object;JIJ)V

    .line 83
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyToplevelEndEvent(Ljava/lang/Object;JIJ)V
    .registers 6
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "timeNanos"    # J
    .param p3, "threadId"    # I
    .param p4, "threadMillis"    # J

    .line 89
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MubkdyjU(Ljava/lang/Object;JIJ)V

    .line 90
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FeatureList_isInitialized()Z
    .registers 1

    .line 92
    invoke-static {}, Landroid/net/connectivity/J/N;->M8oCuMGH()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FeatureMap_getFieldTrialParamByFeature(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "featureMap"    # J
    .param p2, "featureName"    # Ljava/lang/Object;
    .param p3, "paramName"    # Ljava/lang/Object;

    .line 98
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->Mc9lzSch(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FeatureMap_getFieldTrialParamByFeatureAsBoolean(JLjava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 6
    .param p0, "featureMap"    # J
    .param p2, "featureName"    # Ljava/lang/Object;
    .param p3, "paramName"    # Ljava/lang/Object;
    .param p4, "defaultValue"    # Z

    .line 105
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->M_oXU5o3(JLjava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FeatureMap_getFieldTrialParamByFeatureAsDouble(JLjava/lang/Object;Ljava/lang/Object;D)D
    .registers 8
    .param p0, "featureMap"    # J
    .param p2, "featureName"    # Ljava/lang/Object;
    .param p3, "paramName"    # Ljava/lang/Object;
    .param p4, "defaultValue"    # D

    .line 112
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MbvuHUnn(JLjava/lang/Object;Ljava/lang/Object;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FeatureMap_getFieldTrialParamByFeatureAsInt(JLjava/lang/Object;Ljava/lang/Object;I)I
    .registers 6
    .param p0, "featureMap"    # J
    .param p2, "featureName"    # Ljava/lang/Object;
    .param p3, "paramName"    # Ljava/lang/Object;
    .param p4, "defaultValue"    # I

    .line 119
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MjllYAze(JLjava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FeatureMap_getFlattedFieldTrialParamsForFeature(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "featureMap"    # J
    .param p2, "featureName"    # Ljava/lang/Object;

    .line 124
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MouNn1zW(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FeatureMap_isEnabled(JLjava/lang/Object;)Z
    .registers 4
    .param p0, "featureMap"    # J
    .param p2, "featureName"    # Ljava/lang/Object;

    .line 129
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MQjWFQBa(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_Features_getFieldTrialParamByFeatureAsBoolean(JLjava/lang/Object;Z)Z
    .registers 5
    .param p0, "featurePointer"    # J
    .param p2, "paramName"    # Ljava/lang/Object;
    .param p3, "defaultValue"    # Z

    .line 135
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->Mvs8D0NM(JLjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_Features_getFieldTrialParamByFeatureAsString(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "featurePointer"    # J
    .param p2, "paramName"    # Ljava/lang/Object;

    .line 140
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MEUFDkLn(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_Features_isEnabled(J)Z
    .registers 3
    .param p0, "featurePointer"    # J

    .line 144
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MWihnjab(J)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FieldTrialList_createFieldTrial(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "trialName"    # Ljava/lang/Object;
    .param p1, "groupName"    # Ljava/lang/Object;

    .line 149
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MeuypufV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FieldTrialList_findFullName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "trialName"    # Ljava/lang/Object;

    .line 153
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MlRxL19I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FieldTrialList_getVariationParameter(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "trialName"    # Ljava/lang/Object;
    .param p1, "parameterKey"    # Ljava/lang/Object;

    .line 158
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MR6yK_wY(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FieldTrialList_logActiveTrials()V
    .registers 0

    .line 161
    invoke-static {}, Landroid/net/connectivity/J/N;->Mxmj6HmS()V

    .line 162
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FieldTrialList_trialExists(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "trialName"    # Ljava/lang/Object;

    .line 165
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MQvsrB2i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_FileUtils_getAbsoluteFilePath(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/Object;

    .line 169
    invoke-static {p0}, Landroid/net/connectivity/J/N;->M9MfP_AJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_ImportantFileWriterAndroid_writeFileAtomically(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "fileName"    # Ljava/lang/Object;
    .param p1, "data"    # Ljava/lang/Object;

    .line 174
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->M0dSdOEw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_InputHintChecker_failedToInitializeForTesting()Z
    .registers 1

    .line 177
    invoke-static {}, Landroid/net/connectivity/J/N;->Ma_PfM1B_ForTesting()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_InputHintChecker_hasInputForTesting()Z
    .registers 1

    .line 180
    invoke-static {}, Landroid/net/connectivity/J/N;->MvkDa5Md_ForTesting()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_InputHintChecker_hasInputWithThrottlingForTesting()Z
    .registers 1

    .line 183
    invoke-static {}, Landroid/net/connectivity/J/N;->MH9vZUui_ForTesting()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_InputHintChecker_isInitializedForTesting()Z
    .registers 1

    .line 186
    invoke-static {}, Landroid/net/connectivity/J/N;->MK_AUy1k_ForTesting()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_InputHintChecker_onCompositorViewHolderTouchEvent()V
    .registers 0

    .line 189
    invoke-static {}, Landroid/net/connectivity/J/N;->MhjkgOpF()V

    .line 190
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_InputHintChecker_setIsAfterInputYieldForTesting(Z)V
    .registers 1
    .param p0, "after"    # Z

    .line 193
    invoke-static {p0}, Landroid/net/connectivity/J/N;->M10BXcwi_ForTesting(Z)V

    .line 194
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_InputHintChecker_setView(Ljava/lang/Object;)V
    .registers 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 197
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MJvw9Zwk(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_JavaExceptionReporter_reportJavaException(ZLjava/lang/Object;)V
    .registers 2
    .param p0, "crashAfterReport"    # Z
    .param p1, "e"    # Ljava/lang/Object;

    .line 202
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MXovmqyB(ZLjava/lang/Object;)V

    .line 203
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_JavaExceptionReporter_reportJavaStackTrace(Ljava/lang/Object;)V
    .registers 1
    .param p0, "stackTrace"    # Ljava/lang/Object;

    .line 206
    invoke-static {p0}, Landroid/net/connectivity/J/N;->M4b2KkIz(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_JavaHandlerThread_initializeThread(JJ)V
    .registers 4
    .param p0, "nativeJavaHandlerThread"    # J
    .param p2, "nativeEvent"    # J

    .line 211
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->M_Z7ceOr(JJ)V

    .line 212
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_JavaHandlerThread_onLooperStopped(J)V
    .registers 2
    .param p0, "nativeJavaHandlerThread"    # J

    .line 215
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MHuj_tLF(J)V

    .line 216
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_MemoryPressureListener_isTrimMemoryBackgroundCritical()Z
    .registers 1

    .line 218
    invoke-static {}, Landroid/net/connectivity/J/N;->MPWvQRWC()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_MemoryPressureListener_onMemoryPressure(I)V
    .registers 1
    .param p0, "pressure"    # I

    .line 222
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MnsLrJNb(I)V

    .line 223
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_MemoryPressureListener_onPreFreeze()V
    .registers 0

    .line 225
    invoke-static {}, Landroid/net/connectivity/J/N;->MZQha2qJ()V

    .line 226
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_PathService_override(ILjava/lang/Object;)V
    .registers 2
    .param p0, "what"    # I
    .param p1, "path"    # Ljava/lang/Object;

    .line 230
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->M25V0rgQ(ILjava/lang/Object;)V

    .line 231
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_PowerMonitor_onBatteryChargingChanged()V
    .registers 0

    .line 233
    invoke-static {}, Landroid/net/connectivity/J/N;->MCGdxnWU()V

    .line 234
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_PowerMonitor_onThermalStatusChanged(I)V
    .registers 1
    .param p0, "thermalStatus"    # I

    .line 237
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MeY5ulzW(I)V

    .line 238
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_SysUtils_logPageFaultCountToTracing()V
    .registers 0

    .line 240
    invoke-static {}, Landroid/net/connectivity/J/N;->MZfdBYbM()V

    .line 241
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_Token_createRandom()Ljava/lang/Object;
    .registers 1

    .line 243
    invoke-static {}, Landroid/net/connectivity/J/N;->Mn$QKtpN()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_addViewDump(IIZZLjava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .param p0, "id"    # I
    .param p1, "parentId"    # I
    .param p2, "isShown"    # Z
    .param p3, "isDirty"    # Z
    .param p4, "className"    # Ljava/lang/Object;
    .param p5, "resourceName"    # Ljava/lang/Object;
    .param p6, "activityProtoPtr"    # J

    .line 253
    invoke-static/range {p0 .. p7}, Landroid/net/connectivity/J/N;->M41oo8U_(IIZZLjava/lang/Object;Ljava/lang/Object;J)V

    .line 261
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_begin(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 265
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->M_DzpvzS(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_beginToplevel(Ljava/lang/Object;)V
    .registers 1
    .param p0, "target"    # Ljava/lang/Object;

    .line 269
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MXRoygkr(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_beginWithIntArg(Ljava/lang/Object;I)V
    .registers 2
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "arg"    # I

    .line 274
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MeTMqUQM(Ljava/lang/Object;I)V

    .line 275
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_end(Ljava/lang/Object;J)V
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "flow"    # J

    .line 279
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MI7UuZsh(Ljava/lang/Object;J)V

    .line 280
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_endToplevel()V
    .registers 0

    .line 282
    invoke-static {}, Landroid/net/connectivity/J/N;->M3E_y9Z0()V

    .line 283
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_finishAsync(J)V
    .registers 2
    .param p0, "id"    # J

    .line 285
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->Mh7vu_jl(J)V

    .line 286
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_initViewHierarchyDump(JLjava/lang/Object;)V
    .registers 3
    .param p0, "id"    # J
    .param p2, "list"    # Ljava/lang/Object;

    .line 290
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MfLE3FDi(JLjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_instant(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 295
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MSA5B7ai(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_instantAndroidIPC(Ljava/lang/Object;J)V
    .registers 3
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "durMs"    # J

    .line 300
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->M0flZQsx(Ljava/lang/Object;J)V

    .line 301
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_instantAndroidToolbar(III)V
    .registers 3
    .param p0, "blockReason"    # I
    .param p1, "allowReason"    # I
    .param p2, "snapshotDiff"    # I

    .line 306
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MWQIBkUV(III)V

    .line 307
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_registerEnabledObserver()V
    .registers 0

    .line 309
    invoke-static {}, Landroid/net/connectivity/J/N;->Mpv4ixjM()V

    .line 310
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_startActivityDump(Ljava/lang/Object;J)J
    .registers 5
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "dumpProtoPtr"    # J

    .line 314
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MeYEuvyU(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_startAsync(Ljava/lang/Object;J)V
    .registers 3
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "id"    # J

    .line 319
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->M2Uq19aD(Ljava/lang/Object;J)V

    .line 320
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_startupActivityStart(JJ)V
    .registers 4
    .param p0, "activityId"    # J
    .param p2, "startTimeMs"    # J

    .line 324
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MUwg0ylJ(JJ)V

    .line 325
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_startupLaunchCause(JJI)V
    .registers 5
    .param p0, "activityId"    # J
    .param p2, "startTimeMs"    # J
    .param p4, "launchCause"    # I

    .line 330
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MMXDXWdW(JJI)V

    .line 331
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_startupTimeToFirstVisibleContent2(JJJ)V
    .registers 6
    .param p0, "activityId"    # J
    .param p2, "startTimeMs"    # J
    .param p4, "durationMs"    # J

    .line 336
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MfPu4ddG(JJJ)V

    .line 337
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_viewHierarchyDumpEnabled()Z
    .registers 1

    .line 339
    invoke-static {}, Landroid/net/connectivity/J/N;->MEqw2S0B()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_webViewStartupStage1(JJ)V
    .registers 4
    .param p0, "startTimeMs"    # J
    .param p2, "durationMs"    # J

    .line 344
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->M8maPXkg(JJ)V

    .line 345
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_webViewStartupStage2(JJZ)V
    .registers 5
    .param p0, "startTimeMs"    # J
    .param p2, "durationMs"    # J
    .param p4, "isColdStartup"    # Z

    .line 350
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MLe5$ZGj(JJZ)V

    .line 351
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_webViewStartupStartChromiumLocked(JJIZ)V
    .registers 6
    .param p0, "startTimeMs"    # J
    .param p2, "durationMs"    # J
    .param p4, "callSite"    # I
    .param p5, "fromUIThread"    # Z

    .line 357
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MD4WgWjP(JJIZ)V

    .line 358
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_TraceEvent_webViewStartupTotalFactoryInit(JJ)V
    .registers 4
    .param p0, "startTimeMs"    # J
    .param p2, "durationMs"    # J

    .line 362
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MYRqQsc8(JJ)V

    .line 363
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_jank_1tracker_JankMetricUMARecorder_recordJankMetrics(Ljava/lang/Object;Ljava/lang/Object;JJI)V
    .registers 7
    .param p0, "durationsNs"    # Ljava/lang/Object;
    .param p1, "missedVsyncs"    # Ljava/lang/Object;
    .param p2, "reportingIntervalStartTime"    # J
    .param p4, "reportingIntervalDuration"    # J
    .param p6, "scenario"    # I

    .line 370
    invoke-static/range {p0 .. p6}, Landroid/net/connectivity/J/N;->MW_d8G9n(Ljava/lang/Object;Ljava/lang/Object;JJI)V

    .line 376
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_library_1loader_LibraryLoader_libraryLoaded(I)Z
    .registers 2
    .param p0, "processType"    # I

    .line 379
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MT5tbLSv(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_library_1loader_LibraryPrefetcher_forkAndPrefetchNativeLibrary()V
    .registers 0

    .line 382
    invoke-static {}, Landroid/net/connectivity/J/N;->M2btokUl()V

    .line 383
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_library_1loader_LibraryPrefetcher_percentageOfResidentNativeLibraryCode()I
    .registers 1

    .line 385
    invoke-static {}, Landroid/net/connectivity/J/N;->MLqDiN3g()I

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_library_1loader_LibraryPrefetcher_periodicallyCollectResidency()V
    .registers 0

    .line 388
    invoke-static {}, Landroid/net/connectivity/J/N;->M5yGJUDX()V

    .line 389
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_memory_MemoryPurgeManager_isOnPreFreezeMemoryTrimEnabled()Z
    .registers 1

    .line 391
    invoke-static {}, Landroid/net/connectivity/J/N;->MO6T8T2b()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_memory_MemoryPurgeManager_isSelfFreezeEnabled()Z
    .registers 1

    .line 394
    invoke-static {}, Landroid/net/connectivity/J/N;->Mc8kViRS()Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_memory_MemoryPurgeManager_postDelayedPurgeTaskOnUiThread(J)V
    .registers 2
    .param p0, "delayMillis"    # J

    .line 398
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MnOihyIl(J)V

    .line 399
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_addActionCallbackForTesting(Ljava/lang/Object;)J
    .registers 3
    .param p0, "callback"    # Ljava/lang/Object;

    .line 402
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MKu5opmB_ForTesting(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_createHistogramSnapshotForTesting()J
    .registers 2

    .line 405
    invoke-static {}, Landroid/net/connectivity/J/N;->MEvjgs$z_ForTesting()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_destroyHistogramSnapshotForTesting(J)V
    .registers 2
    .param p0, "snapshotPtr"    # J

    .line 409
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->Ms$kNROT_ForTesting(J)V

    .line 410
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_getHistogramSamplesForTesting(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "name"    # Ljava/lang/Object;

    .line 413
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MG7Fp_PX_ForTesting(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_getHistogramTotalCountForTesting(Ljava/lang/Object;J)I
    .registers 4
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "snapshotPtr"    # J

    .line 418
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MAEQJXoB_ForTesting(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_getHistogramValueCountForTesting(Ljava/lang/Object;IJ)I
    .registers 5
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "sample"    # I
    .param p2, "snapshotPtr"    # J

    .line 424
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MK_v14VX_ForTesting(Ljava/lang/Object;IJ)I

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordBooleanHistogram(Ljava/lang/Object;JZ)J
    .registers 6
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "nativeHint"    # J
    .param p3, "sample"    # Z

    .line 430
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MzWzwuwB(Ljava/lang/Object;JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordExponentialHistogram(Ljava/lang/Object;JIIII)J
    .registers 9
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "nativeHint"    # J
    .param p3, "sample"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "numBuckets"    # I

    .line 439
    invoke-static/range {p0 .. p6}, Landroid/net/connectivity/J/N;->MuJ4GoFy(Ljava/lang/Object;JIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordLinearHistogram(Ljava/lang/Object;JIIII)J
    .registers 9
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "nativeHint"    # J
    .param p3, "sample"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "numBuckets"    # I

    .line 448
    invoke-static/range {p0 .. p6}, Landroid/net/connectivity/J/N;->M1BeiK0T(Ljava/lang/Object;JIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordSparseHistogram(Ljava/lang/Object;JI)J
    .registers 6
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "nativeHint"    # J
    .param p3, "sample"    # I

    .line 454
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MYt28aIK(Ljava/lang/Object;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordUserAction(Ljava/lang/Object;J)V
    .registers 3
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "millisSinceEvent"    # J

    .line 459
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MiZ3fGIS(Ljava/lang/Object;J)V

    .line 460
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_removeActionCallbackForTesting(J)V
    .registers 2
    .param p0, "callbackId"    # J

    .line 463
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MQ6A3Yuy_ForTesting(J)V

    .line 464
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_metrics_StatisticsRecorderAndroid_toJson(I)Ljava/lang/Object;
    .registers 2
    .param p0, "verbosityLevel"    # I

    .line 467
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MgDR$ZqU(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_task_TaskRunnerImpl_destroy(J)V
    .registers 2
    .param p0, "nativeTaskRunnerAndroid"    # J

    .line 471
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->M00zN9h9(J)V

    .line 472
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_task_TaskRunnerImpl_init(II)J
    .registers 4
    .param p0, "taskRunnerType"    # I
    .param p1, "taskTraits"    # I

    .line 476
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MdNofz7Z(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_base_task_TaskRunnerImpl_postDelayedTask(JLjava/lang/Object;JLjava/lang/Object;)V
    .registers 6
    .param p0, "nativeTaskRunnerAndroid"    # J
    .param p2, "task"    # Ljava/lang/Object;
    .param p3, "delay"    # J
    .param p5, "runnableClassName"    # Ljava/lang/Object;

    .line 483
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MdtDn8B1(JLjava/lang/Object;JLjava/lang/Object;)V

    .line 484
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_GURLUtils_getOrigin(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "url"    # Ljava/lang/Object;

    .line 486
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MMZmegZ6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_HttpNegotiateAuthenticator_setResult(JLjava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .param p0, "nativeJavaNegotiateResultWrapper"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "status"    # I
    .param p4, "authToken"    # Ljava/lang/Object;

    .line 493
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MjziZhxX(JLjava/lang/Object;ILjava/lang/Object;)V

    .line 498
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_HttpUtil_isAllowedHeader(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "headerName"    # Ljava/lang/Object;
    .param p1, "headerValue"    # Ljava/lang/Object;

    .line 502
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->M5ID1qiR(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_NetworkActiveNotifier_notifyOfDefaultNetworkActive(J)V
    .registers 2
    .param p0, "nativePtr"    # J

    .line 506
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MxPcGW8_(J)V

    .line 507
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyConnectionCostChanged(JLjava/lang/Object;I)V
    .registers 4
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "newConnectionCost"    # I

    .line 512
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MqtHu5YI(JLjava/lang/Object;I)V

    .line 513
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyConnectionSubtypeChanged(JLjava/lang/Object;I)V
    .registers 4
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "subType"    # I

    .line 518
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->M4XZFCk3(JLjava/lang/Object;I)V

    .line 519
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyConnectionTypeChanged(JLjava/lang/Object;IJ)V
    .registers 6
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "newConnectionType"    # I
    .param p4, "defaultNetId"    # J

    .line 525
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MKvWH5iI(JLjava/lang/Object;IJ)V

    .line 526
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyOfNetworkConnect(JLjava/lang/Object;JI)V
    .registers 6
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "netId"    # J
    .param p5, "connectionType"    # I

    .line 532
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MzCImUcu(JLjava/lang/Object;JI)V

    .line 533
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyOfNetworkDisconnect(JLjava/lang/Object;J)V
    .registers 5
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "netId"    # J

    .line 538
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MMe9mIyq(JLjava/lang/Object;J)V

    .line 539
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyOfNetworkSoonToDisconnect(JLjava/lang/Object;J)V
    .registers 5
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "netId"    # J

    .line 544
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MOFU0znc(JLjava/lang/Object;J)V

    .line 545
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyPurgeActiveNetworkList(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "activeNetIds"    # Ljava/lang/Object;

    .line 550
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MmdqE1Yd(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 551
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_ProxyChangeListener_proxySettingsChanged(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 555
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MsBGsdrx(JLjava/lang/Object;)V

    .line 556
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_ProxyChangeListener_proxySettingsChangedTo(JLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "host"    # Ljava/lang/Object;
    .param p4, "port"    # I
    .param p5, "pacUrl"    # Ljava/lang/Object;
    .param p6, "exclusionList"    # Ljava/lang/Object;

    .line 564
    invoke-static/range {p0 .. p6}, Landroid/net/connectivity/J/N;->Mu_vv8fI(JLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_X509Util_notifyClientCertStoreChanged()V
    .registers 0

    .line 567
    invoke-static {}, Landroid/net/connectivity/J/N;->MYouFkpm()V

    .line 568
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_X509Util_notifyTrustStoreChanged()V
    .registers 0

    .line 570
    invoke-static {}, Landroid/net/connectivity/J/N;->MjPnG3OS()V

    .line 571
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_createBidirectionalStream(Ljava/lang/Object;JZZIZIJ)J
    .registers 12
    .param p0, "caller"    # Ljava/lang/Object;
    .param p1, "urlRequestContextAdapter"    # J
    .param p3, "sendRequestHeadersAutomatically"    # Z
    .param p4, "trafficStatsTagSet"    # Z
    .param p5, "trafficStatsTag"    # I
    .param p6, "trafficStatsUidSet"    # Z
    .param p7, "trafficStatsUid"    # I
    .param p8, "networkHandle"    # J

    .line 581
    invoke-static/range {p0 .. p9}, Landroid/net/connectivity/J/N;->MmcHPrML(Ljava/lang/Object;JZZIZIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_destroy(JLjava/lang/Object;Z)V
    .registers 4
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "sendOnCanceled"    # Z

    .line 595
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MfKLon3Z(JLjava/lang/Object;Z)V

    .line 596
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_readData(JLjava/lang/Object;Ljava/lang/Object;II)Z
    .registers 7
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "byteBuffer"    # Ljava/lang/Object;
    .param p4, "position"    # I
    .param p5, "limit"    # I

    .line 603
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->Mii781MA(JLjava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_sendRequestHeaders(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 608
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->Ml$I$FoI(JLjava/lang/Object;)V

    .line 609
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_start(JLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;Z)I
    .registers 9
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "url"    # Ljava/lang/Object;
    .param p4, "priority"    # I
    .param p5, "method"    # Ljava/lang/Object;
    .param p6, "headers"    # Ljava/lang/Object;
    .param p7, "endOfStream"    # Z

    .line 618
    invoke-static/range {p0 .. p7}, Landroid/net/connectivity/J/N;->MtMMqY08(JLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_writevData(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 8
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "buffers"    # Ljava/lang/Object;
    .param p4, "positions"    # Ljava/lang/Object;
    .param p5, "limits"    # Ljava/lang/Object;
    .param p6, "endOfStream"    # Z

    .line 634
    invoke-static/range {p0 .. p6}, Landroid/net/connectivity/J/N;->MRxvUykw(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetLibraryLoader_cronetInitOnInitThread()V
    .registers 0

    .line 643
    invoke-static {}, Landroid/net/connectivity/J/N;->MJyiCQCu()V

    .line 644
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetLibraryLoader_getCronetVersion()Ljava/lang/Object;
    .registers 1

    .line 646
    invoke-static {}, Landroid/net/connectivity/J/N;->Mo_Vqdle()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetLibraryLoader_nativeInit()V
    .registers 0

    .line 649
    invoke-static {}, Landroid/net/connectivity/J/N;->M8G$3n3H()V

    .line 650
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetLibraryLoader_setMinLogLevel(I)V
    .registers 1
    .param p0, "loggingLevel"    # I

    .line 653
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MdZpiqDR(I)V

    .line 654
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_attachUploadDataToRequest(Ljava/lang/Object;JJ)J
    .registers 7
    .param p0, "caller"    # Ljava/lang/Object;
    .param p1, "urlRequestAdapter"    # J
    .param p3, "length"    # J

    .line 659
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MWTaR$k2(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_createAdapterForTesting(Ljava/lang/Object;)J
    .registers 3
    .param p0, "caller"    # Ljava/lang/Object;

    .line 663
    invoke-static {p0}, Landroid/net/connectivity/J/N;->Mp2IXjpG_ForTesting(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_createUploadDataStreamForTesting(Ljava/lang/Object;JJ)J
    .registers 7
    .param p0, "caller"    # Ljava/lang/Object;
    .param p1, "length"    # J
    .param p3, "adapter"    # J

    .line 669
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->Mg_bd8Ro_ForTesting(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_destroy(J)V
    .registers 2
    .param p0, "nativePtr"    # J

    .line 673
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MYiWO19g(J)V

    .line 674
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_onReadSucceeded(JLjava/lang/Object;IZ)V
    .registers 5
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "bytesRead"    # I
    .param p4, "finalChunk"    # Z

    .line 680
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MbUU7LW2(JLjava/lang/Object;IZ)V

    .line 681
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_onRewindSucceeded(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 685
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MzjkTAnn(JLjava/lang/Object;)V

    .line 686
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_addPkp(JLjava/lang/Object;Ljava/lang/Object;ZJ)V
    .registers 7
    .param p0, "urlRequestContextConfig"    # J
    .param p2, "host"    # Ljava/lang/Object;
    .param p3, "hashes"    # Ljava/lang/Object;
    .param p4, "includeSubdomains"    # Z
    .param p5, "expirationTime"    # J

    .line 778
    invoke-static/range {p0 .. p6}, Landroid/net/connectivity/J/N;->MB198bG8(JLjava/lang/Object;Ljava/lang/Object;ZJ)V

    .line 784
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_addQuicHint(JLjava/lang/Object;II)V
    .registers 5
    .param p0, "urlRequestContextConfig"    # J
    .param p2, "host"    # Ljava/lang/Object;
    .param p3, "port"    # I
    .param p4, "alternatePort"    # I

    .line 790
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->M2KdtUrg(JLjava/lang/Object;II)V

    .line 791
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_configureNetworkQualityEstimatorForTesting(JLjava/lang/Object;ZZZ)V
    .registers 6
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "useLocalHostRequests"    # Z
    .param p4, "useSmallerResponses"    # Z
    .param p5, "disableOfflineCheck"    # Z

    .line 798
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->Mj6B5jcc_ForTesting(JLjava/lang/Object;ZZZ)V

    .line 804
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_createRequestContextAdapter(J)J
    .registers 4
    .param p0, "urlRequestContextConfig"    # J

    .line 807
    invoke-static {p0, p1}, Landroid/net/connectivity/J/N;->MM9GSMn8(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_createRequestContextConfig(Ljava/lang/Object;)J
    .registers 3
    .param p0, "serializedRequestContextConfigOptions"    # Ljava/lang/Object;

    .line 811
    invoke-static {p0}, Landroid/net/connectivity/J/N;->MdJIXtYk(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_destroy(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 816
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->M19ulJHr(JLjava/lang/Object;)V

    .line 817
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_flushWritePropertiesForTesting(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 821
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MaCWqii6_ForTesting(JLjava/lang/Object;)V

    .line 822
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_getHistogramDeltas()Ljava/lang/Object;
    .registers 1

    .line 824
    invoke-static {}, Landroid/net/connectivity/J/N;->MbrYstV8()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_initRequestContextOnInitThread(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 829
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MA$0Atjo(JLjava/lang/Object;)V

    .line 830
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_provideRTTObservations(JLjava/lang/Object;Z)V
    .registers 4
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    .line 835
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MpnFUGkW(JLjava/lang/Object;Z)V

    .line 836
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_provideThroughputObservations(JLjava/lang/Object;Z)V
    .registers 4
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    .line 841
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MMi3i5BF(JLjava/lang/Object;Z)V

    .line 842
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_startNetLogToDisk(JLjava/lang/Object;Ljava/lang/Object;ZI)V
    .registers 6
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "dirPath"    # Ljava/lang/Object;
    .param p4, "logAll"    # Z
    .param p5, "maxSize"    # I

    .line 849
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MQxqWopQ(JLjava/lang/Object;Ljava/lang/Object;ZI)V

    .line 850
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_startNetLogToFile(JLjava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 6
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "fileName"    # Ljava/lang/Object;
    .param p4, "logAll"    # Z

    .line 856
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MnbMPIwt(JLjava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequestContext_stopNetLog(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 861
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->Mx6Z5XzS(JLjava/lang/Object;)V

    .line 862
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_addRequestHeader(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;

    .line 692
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/connectivity/J/N;->MSjljk0f(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_createRequestAdapter(Ljava/lang/Object;JLjava/lang/Object;IZZZIZIILjava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;J)J
    .registers 21
    .param p0, "caller"    # Ljava/lang/Object;
    .param p1, "urlRequestContextAdapter"    # J
    .param p3, "url"    # Ljava/lang/Object;
    .param p4, "priority"    # I
    .param p5, "disableCache"    # Z
    .param p6, "disableConnectionMigration"    # Z
    .param p7, "trafficStatsTagSet"    # Z
    .param p8, "trafficStatsTag"    # I
    .param p9, "trafficStatsUidSet"    # Z
    .param p10, "trafficStatsUid"    # I
    .param p11, "idempotency"    # I
    .param p12, "dictionarySha256Hash"    # Ljava/lang/Object;
    .param p13, "dictionary"    # Ljava/lang/Object;
    .param p14, "dictionaryPosition"    # I
    .param p15, "dictionaryCapacity"    # I
    .param p16, "dictionaryId"    # Ljava/lang/Object;
    .param p17, "networkHandle"    # J

    .line 712
    invoke-static/range {p0 .. p18}, Landroid/net/connectivity/J/N;->MFGBnxaV(Ljava/lang/Object;JLjava/lang/Object;IZZZIZIILjava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_destroy(JLjava/lang/Object;Z)V
    .registers 4
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "sendOnCanceled"    # Z

    .line 735
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->Mfotd4Ob(JLjava/lang/Object;Z)V

    .line 736
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_followDeferredRedirect(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 740
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->MSplFy9$(JLjava/lang/Object;)V

    .line 741
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_getStatus(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "listener"    # Ljava/lang/Object;

    .line 746
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MVbDDTbK(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 747
    return-void
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_readData(JLjava/lang/Object;Ljava/lang/Object;II)Z
    .registers 7
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "byteBuffer"    # Ljava/lang/Object;
    .param p4, "position"    # I
    .param p5, "capacity"    # I

    .line 754
    invoke-static/range {p0 .. p5}, Landroid/net/connectivity/J/N;->MjZZaeHU(JLjava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_setHttpMethod(JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/Object;

    .line 765
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/J/N;->MdjgNOi3(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_start(JLjava/lang/Object;)V
    .registers 3
    .param p0, "nativePtr"    # J
    .param p2, "caller"    # Ljava/lang/Object;

    .line 770
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/J/N;->Mw8upc4T(JLjava/lang/Object;)V

    .line 771
    return-void
.end method
