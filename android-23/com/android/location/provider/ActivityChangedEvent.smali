.class public Lcom/android/location/provider/ActivityChangedEvent;
.super Ljava/lang/Object;
.source "ActivityChangedEvent.java"


# instance fields
.field private final mActivityRecognitionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 30
    .local p1, "activityRecognitionEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    if-nez p1, :cond_0

    #@5
    .line 32
    new-instance v0, Ljava/security/InvalidParameterException;

    #@7
    .line 33
    const-string/jumbo v1, "Parameter \'activityRecognitionEvents\' must not be null."

    #@a
    .line 32
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 36
    :cond_0
    iput-object p1, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    #@10
    .line 30
    return-void
.end method


# virtual methods
.method public getActivityRecognitionEvents()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "[ ActivityChangedEvent:"

    #@5
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 48
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/location/provider/ActivityRecognitionEvent;

    #@1a
    .line 49
    .local v1, "event":Lcom/android/location/provider/ActivityRecognitionEvent;
    const-string/jumbo v3, "\n    "

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 50
    invoke-virtual {v1}, Lcom/android/location/provider/ActivityRecognitionEvent;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 52
    .end local v1    # "event":Lcom/android/location/provider/ActivityRecognitionEvent;
    :cond_0
    const-string/jumbo v3, "\n]"

    #@2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method
