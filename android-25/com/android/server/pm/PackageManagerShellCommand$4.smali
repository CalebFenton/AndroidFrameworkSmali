.class Lcom/android/server/pm/PackageManagerShellCommand$4;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerShellCommand;

    #@0
    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 3
    .param p1, "opt"    # Ljava/lang/String;
    .param p2, "cmd"    # Landroid/os/ShellCommand;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 818
    const-string/jumbo v0, "--user"

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 819
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    #@c
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    iput v1, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    #@16
    .line 820
    return v2

    #@17
    .line 821
    :cond_0
    const-string/jumbo v0, "--brief"

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 822
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    #@22
    iput-boolean v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@24
    .line 823
    return v2

    #@25
    .line 824
    :cond_1
    const-string/jumbo v0, "--components"

    #@28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 825
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    #@30
    iput-boolean v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@32
    .line 826
    return v2

    #@33
    .line 828
    :cond_2
    const/4 v0, 0x0

    #@34
    return v0
.end method
