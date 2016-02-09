.class public Landroid/service/notification/ZenModeConfig$EventInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# static fields
.field public static final REPLY_ANY_EXCEPT_NO:I = 0x0

.field public static final REPLY_YES:I = 0x2

.field public static final REPLY_YES_OR_MAYBE:I = 0x1


# instance fields
.field public calendar:Ljava/lang/String;

.field public reply:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 835
    const/16 v0, -0x2710

    #@5
    iput v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@7
    .line 830
    return-void
.end method

.method public static resolveUserId(I)I
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 862
    const/16 v0, -0x2710

    #@2
    if-ne p0, v0, :cond_0

    #@4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@7
    move-result p0

    #@8
    .end local p0    # "userId":I
    :cond_0
    return p0
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 2

    #@0
    .prologue
    .line 854
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    #@2
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    #@5
    .line 855
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@7
    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@9
    .line 856
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@b
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@d
    .line 857
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@f
    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@11
    .line 858
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 846
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 847
    check-cast v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    #@9
    .line 848
    .local v0, "other":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@b
    iget v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 849
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@11
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@13
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    .line 848
    if-eqz v2, :cond_1

    #@19
    .line 850
    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@1b
    iget v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@1d
    if-ne v2, v3, :cond_1

    #@1f
    const/4 v1, 0x1

    #@20
    .line 848
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 841
    const/4 v0, 0x0

    #@1
    return v0
.end method
