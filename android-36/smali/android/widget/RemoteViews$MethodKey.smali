.class Landroid/widget/RemoteViews$MethodKey;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodKey"
.end annotation


# instance fields
.field public greylist-max-o methodName:Ljava/lang/String;

.field public greylist-max-o paramClass:Ljava/lang/Class;

.field public greylist-max-o targetClass:Ljava/lang/Class;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 608
    instance-of v0, p1, Landroid/widget/RemoteViews$MethodKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 609
    return v1

    .line 611
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/widget/RemoteViews$MethodKey;

    .line 612
    .local v0, "p":Landroid/widget/RemoteViews$MethodKey;
    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    .line 613
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    .line 614
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 612
    :goto_2a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 619
    iget-object v0, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    .line 620
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 619
    return v0
.end method

.method public greylist-max-o set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p2, "paramClass"    # Ljava/lang/Class;
    .param p3, "methodName"    # Ljava/lang/String;

    .line 624
    iput-object p1, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    .line 625
    iput-object p2, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    .line 626
    iput-object p3, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    .line 627
    return-void
.end method
