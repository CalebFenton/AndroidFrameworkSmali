.class Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;
    }
.end annotation


# instance fields
.field public mAccessibilityFocusOnlyInActiveWindow:Z

.field public final mBindingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field public final mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field public final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mHandledFeedbackTypes:I

.field public mHasDisplayColorAdjustment:Z

.field public final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAccessibilityEnabled:Z

.field public mIsDisplayMagnificationEnabled:Z

.field public mIsEnhancedWebAccessibilityEnabled:Z

.field public mIsFilterKeyEventsEnabled:Z

.field public mIsTextHighContrastEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public mLastSentClientState:I

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field private mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mUiAutomationServiceOwner:Landroid/os/IBinder;

.field public final mUserId:I

.field public final mWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/accessibilityservice/IAccessibilityServiceClient;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3807
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3752
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@7
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@a
    .line 3751
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    #@c
    .line 3755
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    .line 3754
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    #@13
    .line 3757
    new-instance v0, Landroid/util/SparseArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    #@1a
    .line 3762
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1f
    .line 3761
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@21
    .line 3765
    new-instance v0, Ljava/util/HashMap;

    #@23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@26
    .line 3764
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    #@28
    .line 3768
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2d
    .line 3767
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    #@2f
    .line 3770
    new-instance v0, Ljava/util/HashSet;

    #@31
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@36
    .line 3772
    new-instance v0, Ljava/util/HashSet;

    #@38
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@3b
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@3d
    .line 3775
    new-instance v0, Ljava/util/HashSet;

    #@3f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@42
    .line 3774
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@44
    .line 3777
    const/4 v0, 0x0

    #@45
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    #@47
    .line 3779
    const/4 v0, -0x1

    #@48
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    #@4a
    .line 3795
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;

    #@4c
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@4f
    .line 3794
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@51
    .line 3808
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@53
    .line 3807
    return-void
.end method


# virtual methods
.method public destroyUiAutomationService()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3853
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@3
    .line 3854
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@5
    .line 3855
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3856
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    #@b
    .line 3857
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@d
    const/4 v2, 0x0

    #@e
    .line 3856
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@11
    .line 3858
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    #@13
    .line 3852
    :cond_0
    return-void
.end method

.method public getClientState()I
    .locals 2

    #@0
    .prologue
    .line 3812
    const/4 v0, 0x0

    #@1
    .line 3813
    .local v0, "clientState":I
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3814
    const/4 v0, 0x1

    #@6
    .line 3817
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 3818
    or-int/lit8 v0, v0, 0x2

    #@10
    .line 3820
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 3821
    or-int/lit8 v0, v0, 0x4

    #@16
    .line 3823
    :cond_2
    return v0
.end method

.method public onSwitchToAnotherUser()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3828
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3829
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@7
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    #@a
    .line 3833
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@c
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap25(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@f
    .line 3836
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    #@14
    .line 3837
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    #@16
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@19
    .line 3840
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mHandledFeedbackTypes:I

    #@1b
    .line 3841
    const/4 v0, -0x1

    #@1c
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    #@1e
    .line 3844
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #@20
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@23
    .line 3845
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@25
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@28
    .line 3846
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    #@2a
    .line 3847
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@2c
    .line 3848
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsEnhancedWebAccessibilityEnabled:Z

    #@2e
    .line 3849
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    #@30
    .line 3826
    return-void
.end method
