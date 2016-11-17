.class public final Landroid/app/VoiceInteractor;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/VoiceInteractor$1;,
        Landroid/app/VoiceInteractor$2;,
        Landroid/app/VoiceInteractor$AbortVoiceRequest;,
        Landroid/app/VoiceInteractor$CommandRequest;,
        Landroid/app/VoiceInteractor$CompleteVoiceRequest;,
        Landroid/app/VoiceInteractor$ConfirmationRequest;,
        Landroid/app/VoiceInteractor$PickOptionRequest;,
        Landroid/app/VoiceInteractor$Prompt;,
        Landroid/app/VoiceInteractor$Request;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MSG_ABORT_VOICE_RESULT:I = 0x4

.field static final MSG_CANCEL_RESULT:I = 0x6

.field static final MSG_COMMAND_RESULT:I = 0x5

.field static final MSG_COMPLETE_VOICE_RESULT:I = 0x3

.field static final MSG_CONFIRMATION_RESULT:I = 0x1

.field static final MSG_PICK_OPTION_RESULT:I = 0x2

.field static final NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;

.field static final TAG:Ljava/lang/String; = "VoiceInteractor"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/VoiceInteractor$Request;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field final mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

.field mContext:Landroid/content/Context;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field final mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRetaining:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroid/app/VoiceInteractor$Request;

    #@3
    sput-object v0, Landroid/app/VoiceInteractor;->NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;

    #@5
    .line 64
    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V
    .locals 3
    .param p1, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    new-instance v0, Landroid/app/VoiceInteractor$1;

    #@5
    invoke-direct {v0, p0}, Landroid/app/VoiceInteractor$1;-><init>(Landroid/app/VoiceInteractor;)V

    #@8
    iput-object v0, p0, Landroid/app/VoiceInteractor;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    #@a
    .line 157
    new-instance v0, Landroid/app/VoiceInteractor$2;

    #@c
    invoke-direct {v0, p0}, Landroid/app/VoiceInteractor$2;-><init>(Landroid/app/VoiceInteractor;)V

    #@f
    iput-object v0, p0, Landroid/app/VoiceInteractor;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

    #@11
    .line 198
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v0, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@18
    .line 886
    iput-object p1, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@1a
    .line 887
    iput-object p2, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    #@1c
    .line 888
    iput-object p3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    #@1e
    .line 889
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@20
    iget-object v1, p0, Landroid/app/VoiceInteractor;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    #@22
    const/4 v2, 0x1

    #@23
    invoke-direct {v0, p2, p4, v1, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@26
    iput-object v0, p0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@28
    .line 885
    return-void
.end method

.method private makeRequestList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/VoiceInteractor$Request;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 903
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v0

    #@6
    .line 904
    .local v0, "N":I
    const/4 v3, 0x1

    #@7
    if-ge v0, v3, :cond_0

    #@9
    .line 905
    const/4 v3, 0x0

    #@a
    return-object v3

    #@b
    .line 907
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    .line 908
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/VoiceInteractor$Request;>;"
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@13
    .line 909
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/app/VoiceInteractor$Request;

    #@1b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 908
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 911
    :cond_1
    return-object v2
.end method


# virtual methods
.method attachActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 915
    const/4 v3, 0x0

    #@1
    iput-boolean v3, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    #@3
    .line 916
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    #@5
    if-ne v3, p1, :cond_0

    #@7
    .line 917
    return-void

    #@8
    .line 919
    :cond_0
    iput-object p1, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    #@a
    .line 920
    iput-object p1, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    #@c
    .line 921
    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    #@f
    move-result-object v2

    #@10
    .line 922
    .local v2, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/VoiceInteractor$Request;>;"
    if-eqz v2, :cond_1

    #@12
    .line 923
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v3

    #@17
    if-ge v0, v3, :cond_1

    #@19
    .line 924
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/app/VoiceInteractor$Request;

    #@1f
    .line 925
    .local v1, "req":Landroid/app/VoiceInteractor$Request;
    iput-object p1, v1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    #@21
    .line 926
    iput-object p1, v1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    #@23
    .line 927
    invoke-virtual {v1, p1}, Landroid/app/VoiceInteractor$Request;->onAttached(Landroid/app/Activity;)V

    #@26
    .line 923
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 914
    .end local v0    # "i":I
    .end local v1    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_1
    return-void
.end method

.method detachActivity()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 937
    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    #@4
    move-result-object v2

    #@5
    .line 938
    .local v2, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/VoiceInteractor$Request;>;"
    if-eqz v2, :cond_0

    #@7
    .line 939
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v0, v3, :cond_0

    #@e
    .line 940
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/VoiceInteractor$Request;

    #@14
    .line 941
    .local v1, "req":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->onDetached()V

    #@17
    .line 942
    iput-object v4, v1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    #@19
    .line 943
    iput-object v4, v1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    #@1b
    .line 939
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 946
    .end local v0    # "i":I
    .end local v1    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_0
    iget-boolean v3, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    #@20
    if-nez v3, :cond_2

    #@22
    .line 947
    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    #@25
    move-result-object v2

    #@26
    .line 948
    if-eqz v2, :cond_1

    #@28
    .line 949
    const/4 v0, 0x0

    #@29
    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v3

    #@2d
    if-ge v0, v3, :cond_1

    #@2f
    .line 950
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Landroid/app/VoiceInteractor$Request;

    #@35
    .line 951
    .restart local v1    # "req":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->cancel()V

    #@38
    .line 949
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 954
    .end local v0    # "i":I
    .end local v1    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_1
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@3d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@40
    .line 956
    :cond_2
    iput-object v4, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    #@42
    .line 957
    iput-object v4, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    #@44
    .line 936
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, "    "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1054
    .local v1, "innerPrefix":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@19
    move-result v3

    #@1a
    if-lez v3, :cond_0

    #@1c
    .line 1055
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    const-string/jumbo v3, "Active voice requests:"

    #@22
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 1056
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@28
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@2b
    move-result v3

    #@2c
    if-ge v0, v3, :cond_0

    #@2e
    .line 1057
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/app/VoiceInteractor$Request;

    #@36
    .line 1058
    .local v2, "req":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const-string/jumbo v3, "  #"

    #@3c
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@42
    .line 1059
    const-string/jumbo v3, ": "

    #@45
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 1060
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4b
    .line 1061
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@4e
    .line 1056
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1064
    .end local v0    # "i":I
    .end local v2    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    const-string/jumbo v3, "VoiceInteractor misc state:"

    #@57
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 1065
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    const-string/jumbo v3, "  mInteractor="

    #@60
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    .line 1066
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@65
    invoke-interface {v3}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6c
    .line 1067
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    const-string/jumbo v3, "  mActivity="

    #@72
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    #@77
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@7a
    .line 1052
    return-void
.end method

.method public getActiveRequest(Ljava/lang/String;)Landroid/app/VoiceInteractor$Request;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1021
    iget-object v4, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@3
    monitor-enter v4

    #@4
    .line 1022
    :try_start_0
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v0

    #@a
    .line 1023
    .local v0, "N":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@d
    .line 1024
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/app/VoiceInteractor$Request;

    #@15
    .line 1025
    .local v2, "req":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->getName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    if-eq p1, v3, :cond_0

    #@1b
    if-eqz p1, :cond_1

    #@1d
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->getName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    :cond_0
    monitor-exit v4

    #@28
    .line 1026
    return-object v2

    #@29
    .line 1023
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v2    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_2
    monitor-exit v4

    #@2d
    .line 1030
    return-object v5

    #@2e
    .line 1021
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3
.end method

.method public getActiveRequests()[Landroid/app/VoiceInteractor$Request;
    .locals 5

    #@0
    .prologue
    .line 1000
    iget-object v4, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@2
    monitor-enter v4

    #@3
    .line 1001
    :try_start_0
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v0

    #@9
    .line 1002
    .local v0, "N":I
    if-gtz v0, :cond_0

    #@b
    .line 1003
    sget-object v3, Landroid/app/VoiceInteractor;->NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v4

    #@e
    return-object v3

    #@f
    .line 1005
    :cond_0
    :try_start_1
    new-array v2, v0, [Landroid/app/VoiceInteractor$Request;

    #@11
    .line 1006
    .local v2, "requests":[Landroid/app/VoiceInteractor$Request;
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 1007
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/app/VoiceInteractor$Request;

    #@1c
    aput-object v3, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 1006
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_1
    monitor-exit v4

    #@22
    .line 1009
    return-object v2

    #@23
    .line 1000
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "requests":[Landroid/app/VoiceInteractor$Request;
    :catchall_0
    move-exception v3

    #@24
    monitor-exit v4

    #@25
    throw v3
.end method

.method pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "complete"    # Z

    #@0
    .prologue
    .line 893
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@2
    monitor-enter v2

    #@3
    .line 894
    :try_start_0
    iget-object v1, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@5
    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/VoiceInteractor$Request;

    #@f
    .line 895
    .local v0, "req":Landroid/app/VoiceInteractor$Request;
    if-eqz v0, :cond_0

    #@11
    if-eqz p2, :cond_0

    #@13
    .line 896
    iget-object v1, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@15
    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :cond_0
    monitor-exit v2

    #@1d
    .line 898
    return-object v0

    #@1e
    .line 893
    .end local v0    # "req":Landroid/app/VoiceInteractor$Request;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method retainInstance()V
    .locals 1

    #@0
    .prologue
    .line 933
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    #@3
    .line 932
    return-void
.end method

.method public submitRequest(Landroid/app/VoiceInteractor$Request;)Z
    .locals 1
    .param p1, "request"    # Landroid/app/VoiceInteractor$Request;

    #@0
    .prologue
    .line 961
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public submitRequest(Landroid/app/VoiceInteractor$Request;Ljava/lang/String;)Z
    .locals 5
    .param p1, "request"    # Landroid/app/VoiceInteractor$Request;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 977
    :try_start_0
    iget-object v2, p1, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 978
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "Given "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    const-string/jumbo v4, " is already active"

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 990
    :catch_0
    move-exception v0

    #@26
    .line 991
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VoiceInteractor"

    #@29
    const-string/jumbo v3, "Remove voice interactor service died"

    #@2c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 992
    const/4 v2, 0x0

    #@30
    return v2

    #@31
    .line 980
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@33
    .line 981
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    iget-object v4, p0, Landroid/app/VoiceInteractor;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

    #@3b
    .line 980
    invoke-virtual {p1, v2, v3, v4}, Landroid/app/VoiceInteractor$Request;->submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@3e
    move-result-object v1

    #@3f
    .line 982
    .local v1, "ireq":Lcom/android/internal/app/IVoiceInteractorRequest;
    iput-object v1, p1, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@41
    .line 983
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    #@43
    iput-object v2, p1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    #@45
    .line 984
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    #@47
    iput-object v2, p1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    #@49
    .line 985
    iput-object p2, p1, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    #@4b
    .line 986
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@4d
    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4e
    .line 987
    :try_start_2
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    #@50
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    :try_start_3
    monitor-exit v3

    #@58
    .line 989
    const/4 v2, 0x1

    #@59
    return v2

    #@5a
    .line 986
    :catchall_0
    move-exception v2

    #@5b
    monitor-exit v3

    #@5c
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public supportsCommands([Ljava/lang/String;)[Z
    .locals 4
    .param p1, "commands"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1044
    :try_start_0
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@2
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-interface {v2, v3, p1}, Lcom/android/internal/app/IVoiceInteractor;->supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 1046
    .local v1, "res":[Z
    return-object v1

    #@d
    .line 1047
    .end local v1    # "res":[Z
    :catch_0
    move-exception v0

    #@e
    .line 1048
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v3, "Voice interactor has died"

    #@13
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v2
.end method
