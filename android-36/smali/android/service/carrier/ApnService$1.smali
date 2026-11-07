.class Landroid/service/carrier/ApnService$1;
.super Landroid/service/carrier/IApnSourceService$Stub;
.source "ApnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ApnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/carrier/ApnService;


# direct methods
.method constructor blacklist <init>(Landroid/service/carrier/ApnService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/carrier/ApnService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Landroid/service/carrier/ApnService$1;->this$0:Landroid/service/carrier/ApnService;

    invoke-direct {p0}, Landroid/service/carrier/IApnSourceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getApns(I)[Landroid/content/ContentValues;
    .registers 5
    .param p1, "subId"    # I

    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/service/carrier/ApnService$1;->this$0:Landroid/service/carrier/ApnService;

    invoke-virtual {v0, p1}, Landroid/service/carrier/ApnService;->onRestoreApns(I)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "apns":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 57
    .end local v0    # "apns":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_13
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getApns for subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApnService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v1, 0x0

    return-object v1
.end method
