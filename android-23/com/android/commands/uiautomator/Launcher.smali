.class public Lcom/android/commands/uiautomator/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uiautomator/Launcher$Command;,
        Lcom/android/commands/uiautomator/Launcher$1;
    }
.end annotation


# static fields
.field private static COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

.field private static HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;


# direct methods
.method static synthetic -get0()[Lcom/android/commands/uiautomator/Launcher$Command;
    .locals 1

    #@0
    sget-object v0, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 99
    new-instance v0, Lcom/android/commands/uiautomator/Launcher$1;

    #@2
    const-string/jumbo v1, "help"

    #@5
    invoke-direct {v0, v1}, Lcom/android/commands/uiautomator/Launcher$1;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/commands/uiautomator/Launcher;->HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;

    #@a
    .line 129
    const/4 v0, 0x4

    #@b
    new-array v0, v0, [Lcom/android/commands/uiautomator/Launcher$Command;

    #@d
    .line 130
    sget-object v1, Lcom/android/commands/uiautomator/Launcher;->HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    .line 131
    new-instance v1, Lcom/android/commands/uiautomator/RunTestCommand;

    #@14
    invoke-direct {v1}, Lcom/android/commands/uiautomator/RunTestCommand;-><init>()V

    #@17
    const/4 v2, 0x1

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 132
    new-instance v1, Lcom/android/commands/uiautomator/DumpCommand;

    #@1c
    invoke-direct {v1}, Lcom/android/commands/uiautomator/DumpCommand;-><init>()V

    #@1f
    const/4 v2, 0x2

    #@20
    aput-object v1, v0, v2

    #@22
    .line 133
    new-instance v1, Lcom/android/commands/uiautomator/EventsCommand;

    #@24
    invoke-direct {v1}, Lcom/android/commands/uiautomator/EventsCommand;-><init>()V

    #@27
    const/4 v2, 0x3

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 129
    sput-object v0, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    #@2c
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static findCommand(Ljava/lang/String;)Lcom/android/commands/uiautomator/Launcher$Command;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    sget-object v2, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_1

    #@6
    aget-object v0, v2, v1

    #@8
    .line 92
    .local v0, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    invoke-virtual {v0}, Lcom/android/commands/uiautomator/Launcher$Command;->name()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 93
    return-object v0

    #@13
    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 96
    .end local v0    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    :cond_1
    const/4 v1, 0x0

    #@17
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 74
    const-string/jumbo v2, "uiautomator"

    #@5
    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@8
    .line 75
    array-length v2, p0

    #@9
    if-lt v2, v3, :cond_1

    #@b
    .line 76
    aget-object v2, p0, v4

    #@d
    invoke-static {v2}, Lcom/android/commands/uiautomator/Launcher;->findCommand(Ljava/lang/String;)Lcom/android/commands/uiautomator/Launcher$Command;

    #@10
    move-result-object v1

    #@11
    .line 77
    .local v1, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    if-eqz v1, :cond_1

    #@13
    .line 78
    new-array v0, v4, [Ljava/lang/String;

    #@15
    .line 79
    .local v0, "args2":[Ljava/lang/String;
    array-length v2, p0

    #@16
    if-le v2, v3, :cond_0

    #@18
    .line 81
    array-length v2, p0

    #@19
    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .end local v0    # "args2":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    #@1f
    .line 83
    .restart local v0    # "args2":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/commands/uiautomator/Launcher$Command;->run([Ljava/lang/String;)V

    #@22
    .line 84
    return-void

    #@23
    .line 87
    .end local v0    # "args2":[Ljava/lang/String;
    .end local v1    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    :cond_1
    sget-object v2, Lcom/android/commands/uiautomator/Launcher;->HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;

    #@25
    invoke-virtual {v2, p0}, Lcom/android/commands/uiautomator/Launcher$Command;->run([Ljava/lang/String;)V

    #@28
    .line 72
    return-void
.end method
