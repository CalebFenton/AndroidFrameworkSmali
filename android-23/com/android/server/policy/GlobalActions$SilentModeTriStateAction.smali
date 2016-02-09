.class Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 957
    const v0, 0x102032c

    #@6
    const v1, 0x102032d

    #@9
    const v2, 0x102032e

    #@c
    filled-new-array {v0, v1, v2}, [I

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    #@12
    .line 964
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    #@14
    .line 965
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    #@16
    .line 966
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    #@18
    .line 963
    return-void
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 976
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    #@0
    .prologue
    .line 971
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 986
    const v4, 0x1090063

    #@4
    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@7
    move-result-object v3

    #@8
    .line 988
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    #@a
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    #@d
    move-result v4

    #@e
    invoke-direct {p0, v4}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    #@11
    move-result v2

    #@12
    .line 989
    .local v2, "selectedIndex":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    const/4 v4, 0x3

    #@14
    if-ge v0, v4, :cond_1

    #@16
    .line 990
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    #@18
    aget v4, v4, v0

    #@1a
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    .line 991
    .local v1, "itemView":Landroid/view/View;
    if-ne v2, v0, :cond_0

    #@20
    const/4 v4, 0x1

    #@21
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    #@24
    .line 993
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@2b
    .line 994
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@2e
    .line 989
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    :cond_0
    move v4, v5

    #@32
    .line 991
    goto :goto_1

    #@33
    .line 996
    .end local v1    # "itemView":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 981
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1011
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1018
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    instance-of v1, v1, Ljava/lang/Integer;

    #@6
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 1020
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/Integer;

    #@f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v0

    #@13
    .line 1021
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    #@1c
    .line 1022
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    #@1e
    const-wide/16 v2, 0x12c

    #@20
    const/4 v4, 0x0

    #@21
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@24
    .line 1017
    return-void
.end method

.method public onPress()V
    .locals 0

    #@0
    .prologue
    .line 999
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 1007
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 1003
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method willCreate()V
    .locals 0

    #@0
    .prologue
    .line 1014
    return-void
.end method
