.class Lcom/android/server/pm/PackageManagerService$17;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$BlobXmlRestorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->restoreDefaultApps([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 14135
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public apply(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 14139
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@4
    monitor-enter v1

    #@5
    .line 14140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 14138
    return-void

    #@e
    .line 14139
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
