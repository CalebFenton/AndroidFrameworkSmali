.class Lcom/android/server/notification/ConditionProviders$ConditionRecord;
.super Ljava/lang/Object;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConditionProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionRecord"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public condition:Landroid/service/notification/Condition;

.field public final id:Landroid/net/Uri;

.field public info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public subscribed:Z


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 390
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@5
    .line 391
    iput-object p2, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    #@7
    .line 389
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 0
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v2, "ConditionRecord[id="

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 397
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    #@a
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 397
    const-string/jumbo v2, ",component="

    #@11
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 397
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    #@17
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 398
    const-string/jumbo v2, ",subscribed="

    #@1e
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 398
    iget-boolean v2, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    #@24
    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 399
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5d

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1
.end method
