.class Lcom/android/server/retaildemo/PreloadAppsInstaller$1;
.super Landroid/app/PackageInstallObserver;
.source "PreloadAppsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/PreloadAppsInstaller;->installPackage(Ljava/io/File;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/PreloadAppsInstaller;ILjava/lang/String;Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/PreloadAppsInstaller;
    .param p2, "val$userId"    # I
    .param p3, "val$apkName"    # Ljava/lang/String;
    .param p4, "val$counter"    # Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@2
    iput p2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$userId:I

    #@4
    iput-object p3, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    #@8
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 124
    invoke-static {}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get0()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 125
    invoke-static {}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get1()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Package "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " installed u"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$userId:I

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 126
    const-string/jumbo v2, " returnCode: "

    #@2a
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 126
    const-string/jumbo v2, " msg: "

    #@35
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 129
    :cond_0
    const/4 v0, 0x1

    #@45
    if-ne p2, v0, :cond_1

    #@47
    .line 130
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@49
    invoke-static {v0}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get2(Lcom/android/server/retaildemo/PreloadAppsInstaller;)Ljava/util/Map;

    #@4c
    move-result-object v0

    #@4d
    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    #@4f
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 132
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@54
    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    #@56
    const/4 v2, 0x0

    #@57
    invoke-static {v0, p1, v2, v1}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-wrap0(Lcom/android/server/retaildemo/PreloadAppsInstaller;Ljava/lang/String;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V

    #@5a
    .line 123
    :goto_0
    return-void

    #@5b
    .line 133
    :cond_1
    const/4 v0, -0x1

    #@5c
    if-ne p2, v0, :cond_3

    #@5e
    .line 135
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@60
    invoke-static {v0}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get2(Lcom/android/server/retaildemo/PreloadAppsInstaller;)Ljava/util/Map;

    #@63
    move-result-object v0

    #@64
    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    #@66
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@69
    move-result v0

    #@6a
    if-nez v0, :cond_2

    #@6c
    .line 136
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@6e
    invoke-static {v0}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get2(Lcom/android/server/retaildemo/PreloadAppsInstaller;)Ljava/util/Map;

    #@71
    move-result-object v0

    #@72
    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    #@74
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@79
    iget v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$userId:I

    #@7b
    iget-object v2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    #@7d
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-wrap0(Lcom/android/server/retaildemo/PreloadAppsInstaller;Ljava/lang/String;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V

    #@80
    goto :goto_0

    #@81
    .line 140
    :cond_3
    invoke-static {}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get1()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    new-instance v1, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v2, "Package "

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    const-string/jumbo v2, " cannot be installed from "

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    .line 141
    iget-object v2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    #@9e
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    .line 141
    const-string/jumbo v2, ": "

    #@a5
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v1

    #@ad
    .line 141
    const-string/jumbo v2, " (returnCode "

    #@b0
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v1

    #@b8
    .line 141
    const-string/jumbo v2, ")"

    #@bb
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v1

    #@c3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 142
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    #@c8
    invoke-virtual {v0}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->appInstallFinished()V

    #@cb
    goto :goto_0
.end method
