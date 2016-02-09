.class public Landroid/ddm/DdmRegister;
.super Ljava/lang/Object;
.source "DdmRegister.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static registerHandlers()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-static {}, Landroid/ddm/DdmHandleHello;->register()V

    #@3
    .line 49
    invoke-static {}, Landroid/ddm/DdmHandleThread;->register()V

    #@6
    .line 50
    invoke-static {}, Landroid/ddm/DdmHandleHeap;->register()V

    #@9
    .line 51
    invoke-static {}, Landroid/ddm/DdmHandleNativeHeap;->register()V

    #@c
    .line 52
    invoke-static {}, Landroid/ddm/DdmHandleProfiling;->register()V

    #@f
    .line 53
    invoke-static {}, Landroid/ddm/DdmHandleExit;->register()V

    #@12
    .line 54
    invoke-static {}, Landroid/ddm/DdmHandleViewDebug;->register()V

    #@15
    .line 56
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registrationComplete()V

    #@18
    .line 45
    return-void
.end method
