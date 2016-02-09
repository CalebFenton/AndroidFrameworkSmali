.class Lcom/android/server/pm/PackageManagerService$18;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$BlobXmlRestorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->restoreIntentFilterVerification([BI)V
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
    .line 14191
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$18;->this$0:Lcom/android/server/pm/PackageManagerService;

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
    .line 14195
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$18;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@4
    monitor-enter v1

    #@5
    .line 14196
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$18;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings;->readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@c
    .line 14197
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$18;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@10
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 14194
    return-void

    #@15
    .line 14195
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method
