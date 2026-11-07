.class public Lcom/android/internal/protolog/ProtoLogCommandHandler;
.super Landroid/os/ShellCommand;
.source "ProtoLogCommandHandler.java"


# instance fields
.field private final blacklist mPrintWriter:Ljava/io/PrintWriter;

.field private final blacklist mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;)V
    .registers 3
    .param p1, "protoLogConfigurationService"    # Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;Ljava/io/PrintWriter;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "protoLogConfigurationService"    # Lcom/android/internal/protolog/ProtoLogConfigurationService;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;

    .line 44
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 46
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    .line 47
    return-void
.end method

.method private blacklist handleGroupsCommands(Ljava/lang/String;)I
    .registers 10
    .param p1, "cmd"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 104
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Incomplete command. Use \'cmd protolog help\' for guidance."

    const/4 v2, 0x0

    if-nez p1, :cond_d

    .line 105
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    return v2

    .line 109
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_d4

    :cond_15
    goto :goto_2b

    :sswitch_16
    const-string v3, "list"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_2c

    :sswitch_20
    const-string/jumbo v3, "status"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_2c

    :goto_2b
    move v3, v4

    :goto_2c
    packed-switch v3, :pswitch_data_de

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    return v4

    .line 125
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "group":Ljava/lang/String;
    if-nez v3, :cond_50

    .line 128
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    return v2

    .line 132
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProtoLog group "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'s status:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 135
    const-string v1, "UNREGISTERED"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    return v2

    .line 139
    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG_TO_LOGCAT = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 140
    invoke-interface {v4, v3}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->isLoggingToLogcat(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    return v2

    .line 111
    .end local v3    # "group":Ljava/lang/String;
    :pswitch_9f
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "availableGroups":[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_ae

    .line 113
    const-string v3, "No ProtoLog groups registered with ProtoLog service."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    return v2

    .line 117
    :cond_ae
    const-string v3, "ProtoLog groups registered with service:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    array-length v3, v1

    move v4, v2

    :goto_b5
    if-ge v4, v3, :cond_d2

    aget-object v5, v1, v4

    .line 119
    .local v5, "group":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .end local v5    # "group":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 122
    :cond_d2
    return v2

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x3532300e -> :sswitch_20
        0x32b09e -> :sswitch_16
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_46
    .end packed-switch
.end method

.method private blacklist handleLogcatCommands(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 153
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_5a

    .line 158
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_60

    :cond_16
    goto :goto_2b

    :sswitch_17
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_2c

    :sswitch_21
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v1

    goto :goto_2c

    :goto_2b
    move v2, v3

    :goto_2c
    packed-switch v2, :pswitch_data_6a

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    return v3

    .line 164
    :pswitch_46
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->processGroups()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->disableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 165
    return v1

    .line 160
    :pswitch_50
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->processGroups()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->enableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 161
    return v1

    .line 154
    :cond_5a
    :goto_5a
    const-string v2, "Incomplete command. Use \'cmd protolog help\' for guidance."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    return v1

    :sswitch_data_60
    .sparse-switch
        -0x4d6ada7d -> :sswitch_21
        0x639e22e8 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_50
        :pswitch_46
    .end packed-switch
.end method

.method private blacklist processGroups()[Ljava/lang/String;
    .registers 3

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getRemainingArgsCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 177
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v0}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_12
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getRemainingArgsCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 185
    :cond_20
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public blacklist getOutPrintWriter()Ljava/io/PrintWriter;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_7

    .line 95
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    return-object v0

    .line 98
    :cond_7
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist handleDefaultCommands(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 65
    if-eqz p1, :cond_35

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_35

    .line 69
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (use \'help\' command for guidance)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const/4 v0, -0x1

    return v0

    .line 66
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->onHelp()V

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->onHelp()V

    .line 53
    return v0

    .line 56
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3e

    :cond_e
    goto :goto_22

    :sswitch_f
    const-string v0, "logcat"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_23

    :sswitch_19
    const-string v1, "groups"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_23

    :goto_22
    const/4 v0, -0x1

    :goto_23
    packed-switch v0, :pswitch_data_48

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_3c

    .line 58
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleLogcatCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_3c

    .line 57
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleGroupsCommands(Ljava/lang/String;)I

    move-result v0

    .line 56
    :goto_3c
    return v0

    nop

    :sswitch_data_3e
    .sparse-switch
        -0x49c2262c -> :sswitch_19
        -0x416819ee -> :sswitch_f
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2b
    .end packed-switch
.end method

.method public blacklist onHelp()V
    .registers 3

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 78
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "ProtoLog commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 82
    const-string v1, "  groups (list | status)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    list - lists all ProtoLog groups registered with ProtoLog service"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    status <group> - print the status of a ProtoLog group"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 86
    const-string v1, "  logcat (enable | disable) <group>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "    enable or disable ProtoLog to logcat"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 89
    return-void
.end method
