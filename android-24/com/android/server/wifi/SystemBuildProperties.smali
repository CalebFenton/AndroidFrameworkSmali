.class Lcom/android/server/wifi/SystemBuildProperties;
.super Ljava/lang/Object;
.source "SystemBuildProperties.java"

# interfaces
.implements Lcom/android/server/wifi/BuildProperties;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isEngBuild()Z
    .locals 2

    #@0
    .prologue
    .line 24
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "eng"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isUserBuild()Z
    .locals 2

    #@0
    .prologue
    .line 34
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "user"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isUserdebugBuild()Z
    .locals 2

    #@0
    .prologue
    .line 29
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "userdebug"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method
