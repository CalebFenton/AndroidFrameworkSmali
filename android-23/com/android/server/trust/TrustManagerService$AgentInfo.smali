.class final Lcom/android/server/trust/TrustManagerService$AgentInfo;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AgentInfo"
.end annotation


# instance fields
.field agent:Lcom/android/server/trust/TrustAgentWrapper;

.field component:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field settings:Landroid/content/ComponentName;

.field userId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService$AgentInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 169
    instance-of v2, p1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 170
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 172
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    #@9
    .line 173
    .local v0, "o":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@b
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@d
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    iget v2, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@15
    iget v3, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@17
    if-ne v2, v3, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    #@2
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget v1, p0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method
