.class public Lcom/android/commands/svc/Svc;
.super Ljava/lang/Object;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/svc/Svc$Command;,
        Lcom/android/commands/svc/Svc$1;
    }
.end annotation


# static fields
.field public static final COMMANDS:[Lcom/android/commands/svc/Svc$Command;

.field public static final COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/commands/svc/Svc;->lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 59
    new-instance v0, Lcom/android/commands/svc/Svc$1;

    #@2
    const-string/jumbo v1, "help"

    #@5
    invoke-direct {v0, v1}, Lcom/android/commands/svc/Svc$1;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/commands/svc/Svc;->COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;

    #@a
    .line 93
    const/4 v0, 0x5

    #@b
    new-array v0, v0, [Lcom/android/commands/svc/Svc$Command;

    #@d
    .line 94
    sget-object v1, Lcom/android/commands/svc/Svc;->COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    .line 95
    new-instance v1, Lcom/android/commands/svc/PowerCommand;

    #@14
    invoke-direct {v1}, Lcom/android/commands/svc/PowerCommand;-><init>()V

    #@17
    const/4 v2, 0x1

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 96
    new-instance v1, Lcom/android/commands/svc/DataCommand;

    #@1c
    invoke-direct {v1}, Lcom/android/commands/svc/DataCommand;-><init>()V

    #@1f
    const/4 v2, 0x2

    #@20
    aput-object v1, v0, v2

    #@22
    .line 97
    new-instance v1, Lcom/android/commands/svc/WifiCommand;

    #@24
    invoke-direct {v1}, Lcom/android/commands/svc/WifiCommand;-><init>()V

    #@27
    const/4 v2, 0x3

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 98
    new-instance v1, Lcom/android/commands/svc/UsbCommand;

    #@2c
    invoke-direct {v1}, Lcom/android/commands/svc/UsbCommand;-><init>()V

    #@2f
    const/4 v2, 0x4

    #@30
    aput-object v1, v0, v2

    #@32
    .line 93
    sput-object v0, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    #@34
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    sget-object v3, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    #@2
    array-length v0, v3

    #@3
    .line 50
    .local v0, "N":I
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@6
    .line 51
    sget-object v3, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    #@8
    aget-object v1, v3, v2

    #@a
    .line 52
    .local v1, "c":Lcom/android/commands/svc/Svc$Command;
    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 53
    return-object v1

    #@15
    .line 50
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 56
    .end local v1    # "c":Lcom/android/commands/svc/Svc$Command;
    :cond_1
    const/4 v3, 0x0

    #@19
    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 38
    array-length v1, p0

    #@1
    const/4 v2, 0x1

    #@2
    if-lt v1, v2, :cond_0

    #@4
    .line 39
    const/4 v1, 0x0

    #@5
    aget-object v1, p0, v1

    #@7
    invoke-static {v1}, Lcom/android/commands/svc/Svc;->lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    #@a
    move-result-object v0

    #@b
    .line 40
    .local v0, "c":Lcom/android/commands/svc/Svc$Command;
    if-eqz v0, :cond_0

    #@d
    .line 41
    invoke-virtual {v0, p0}, Lcom/android/commands/svc/Svc$Command;->run([Ljava/lang/String;)V

    #@10
    .line 42
    return-void

    #@11
    .line 45
    .end local v0    # "c":Lcom/android/commands/svc/Svc$Command;
    :cond_0
    sget-object v1, Lcom/android/commands/svc/Svc;->COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;

    #@13
    invoke-virtual {v1, p0}, Lcom/android/commands/svc/Svc$Command;->run([Ljava/lang/String;)V

    #@16
    .line 37
    return-void
.end method
