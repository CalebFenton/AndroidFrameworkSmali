.class public final Landroid/net/wifi/SecurityParams;
.super Ljava/lang/Object;
.source "SecurityParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SecurityParams$PasspointRelease;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PASSPOINT_R1:I = 0x1

.field public static final blacklist PASSPOINT_R2:I = 0x2

.field public static final blacklist PASSPOINT_R3:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "SecurityParams"


# instance fields
.field private blacklist mAllowedAuthAlgorithms:Ljava/util/BitSet;

.field private blacklist mAllowedGroupCiphers:Ljava/util/BitSet;

.field private blacklist mAllowedGroupManagementCiphers:Ljava/util/BitSet;

.field private blacklist mAllowedKeyManagement:Ljava/util/BitSet;

.field private blacklist mAllowedPairwiseCiphers:Ljava/util/BitSet;

.field private blacklist mAllowedProtocols:Ljava/util/BitSet;

.field private blacklist mAllowedSuiteBCiphers:Ljava/util/BitSet;

.field private blacklist mEnabled:Z

.field private blacklist mIsAddedByAutoUpgrade:Z

.field private blacklist mIsSaeH2eOnlyMode:Z

.field private blacklist mIsSaePkOnlyMode:Z

.field private blacklist mPasspointRelease:I

.field private blacklist mRequirePmf:Z

.field private blacklist mSecurityType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAllowedAuthAlgorithms(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedGroupCiphers(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedGroupManagementCiphers(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedKeyManagement(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedPairwiseCiphers(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedProtocols(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedSuiteBCiphers(Landroid/net/wifi/SecurityParams;Ljava/util/BitSet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnabled(Landroid/net/wifi/SecurityParams;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAddedByAutoUpgrade(Landroid/net/wifi/SecurityParams;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSaeH2eOnlyMode(Landroid/net/wifi/SecurityParams;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSaePkOnlyMode(Landroid/net/wifi/SecurityParams;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequirePmf(Landroid/net/wifi/SecurityParams;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecurityType(Landroid/net/wifi/SecurityParams;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 573
    new-instance v0, Landroid/net/wifi/SecurityParams$1;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SecurityParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    .line 75
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 82
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    .line 89
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    .line 96
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    .line 103
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    .line 109
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 116
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 123
    iput v0, p0, Landroid/net/wifi/SecurityParams;->mPasspointRelease:I

    .line 126
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 129
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    .line 132
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    .line 136
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/SecurityParams-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/wifi/SecurityParams;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/SecurityParams;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/SecurityParams;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    .line 75
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 82
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    .line 89
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    .line 96
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    .line 103
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    .line 109
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 116
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 123
    iput v0, p0, Landroid/net/wifi/SecurityParams;->mPasspointRelease:I

    .line 126
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 129
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    .line 132
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    .line 140
    iget v0, p1, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    iput v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 141
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    .line 142
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 143
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    .line 144
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    .line 145
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    .line 146
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    .line 147
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 148
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 149
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    .line 150
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    .line 151
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 152
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 153
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    .line 154
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    .line 155
    return-void
.end method

.method private static blacklist createDppParams()Landroid/net/wifi/SecurityParams;
    .registers 5

    .line 927
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 928
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/16 v1, 0xd

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 930
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 932
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 934
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 935
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 936
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 938
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 939
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 940
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 942
    iput-boolean v2, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 943
    return-object v0
.end method

.method private static blacklist createEnhancedOpenParams()Landroid/net/wifi/SecurityParams;
    .registers 5

    .line 718
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 719
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x6

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 721
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 723
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 725
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 726
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 727
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 729
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 730
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 731
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 733
    iput-boolean v2, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 734
    return-object v0
.end method

.method private static blacklist createOpenParams()Landroid/net/wifi/SecurityParams;
    .registers 4

    .line 741
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 742
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 744
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 746
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 747
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 748
    return-object v0
.end method

.method private static blacklist createOsenParams()Landroid/net/wifi/SecurityParams;
    .registers 4

    .line 755
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 756
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/16 v1, 0xa

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 758
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 760
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 762
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 763
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 765
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 766
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 767
    return-object v0
.end method

.method private static blacklist createPasspointParams(I)Landroid/net/wifi/SecurityParams;
    .registers 6
    .param p0, "release"    # I

    .line 686
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 687
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_56

    .line 697
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid passpoint release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :pswitch_22
    const/16 v2, 0xc

    iput v2, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 694
    iput-boolean v1, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 695
    goto :goto_2e

    .line 690
    :pswitch_29
    const/16 v2, 0xb

    iput v2, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 691
    nop

    .line 700
    :goto_2e
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 701
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 703
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 705
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 706
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 708
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 709
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 711
    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;
    .registers 4
    .param p0, "securityType"    # I

    .line 622
    packed-switch p0, :pswitch_data_64

    .line 655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :pswitch_1c
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createDppParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 651
    :pswitch_21
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/wifi/SecurityParams;->createPasspointParams(I)Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 649
    :pswitch_27
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/wifi/SecurityParams;->createPasspointParams(I)Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 647
    :pswitch_2d
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createOsenParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 645
    :pswitch_32
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpa3EnterpriseParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 643
    :pswitch_37
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWapiCertParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 641
    :pswitch_3c
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWapiPskParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 639
    :pswitch_41
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createEnhancedOpenParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 637
    :pswitch_46
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpa3Enterprise192BitParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 632
    :pswitch_4b
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpa3PersonalParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 630
    :pswitch_50
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpaWpa2EnterpriseParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 628
    :pswitch_55
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpaWpa2PersonalParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 626
    :pswitch_5a
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWepParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    .line 624
    :pswitch_5f
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createOpenParams()Landroid/net/wifi/SecurityParams;

    move-result-object v0

    return-object v0

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method private static blacklist createWapiCertParams()Landroid/net/wifi/SecurityParams;
    .registers 3

    .line 774
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 775
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/16 v1, 0x8

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 777
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 779
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 781
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 783
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 784
    return-object v0
.end method

.method private static blacklist createWapiPskParams()Landroid/net/wifi/SecurityParams;
    .registers 3

    .line 791
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 792
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x7

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 794
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 796
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 798
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 800
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 801
    return-object v0
.end method

.method private static blacklist createWepParams()Landroid/net/wifi/SecurityParams;
    .registers 6

    .line 808
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 809
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 811
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 813
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 815
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 816
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 818
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 819
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 821
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 822
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 823
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 824
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 825
    return-object v0
.end method

.method private static blacklist createWpa3Enterprise192BitParams()Landroid/net/wifi/SecurityParams;
    .registers 6

    .line 832
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 833
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 835
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 836
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 837
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 839
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 841
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 842
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 844
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 845
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 847
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 852
    iput-boolean v5, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 853
    return-object v0
.end method

.method private static blacklist createWpa3EnterpriseParams()Landroid/net/wifi/SecurityParams;
    .registers 5

    .line 860
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 861
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/16 v1, 0x9

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 863
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 864
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 866
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 868
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 869
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 871
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 872
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 874
    iput-boolean v4, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 875
    return-object v0
.end method

.method private static blacklist createWpa3PersonalParams()Landroid/net/wifi/SecurityParams;
    .registers 5

    .line 882
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 883
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x4

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 885
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 887
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 889
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 890
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 891
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 893
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 894
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 895
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 897
    iput-boolean v2, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 898
    return-object v0
.end method

.method private static blacklist createWpaWpa2EnterpriseParams()Landroid/net/wifi/SecurityParams;
    .registers 6

    .line 663
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 664
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 666
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 667
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 669
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 670
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 672
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 673
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 674
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 676
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 677
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 678
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 679
    return-object v0
.end method

.method private static blacklist createWpaWpa2PersonalParams()Landroid/net/wifi/SecurityParams;
    .registers 6

    .line 905
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 906
    .local v0, "params":Landroid/net/wifi/SecurityParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 908
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 910
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 911
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 913
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 914
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 916
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 917
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 918
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 919
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 920
    return-object v0
.end method

.method private static blacklist readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 5
    .param p0, "src"    # Landroid/os/Parcel;

    .line 527
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 529
    .local v0, "cardinality":I
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 530
    .local v1, "set":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_16

    .line 531
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 534
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method private static blacklist writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .registers 5
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    .line 538
    const/4 v0, -0x1

    .line 540
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    :goto_8
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 543
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 545
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableFils(ZZ)V
    .registers 5
    .param p1, "enableFilsSha256"    # Z
    .param p2, "enableFilsSha384"    # Z

    .line 264
    if-eqz p1, :cond_9

    .line 265
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 268
    :cond_9
    if-eqz p2, :cond_12

    .line 269
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 271
    :cond_12
    return-void
.end method

.method public blacklist enableSaeH2eOnlyMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 382
    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 383
    return-void
.end method

.method public blacklist enableSaePkOnlyMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 399
    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    .line 400
    return-void
.end method

.method public blacklist enableSuiteBCiphers(ZZ)V
    .registers 5
    .param p1, "enableEcdheEcdsa"    # Z
    .param p2, "enableEcdheRsa"    # Z

    .line 322
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 323
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_e

    .line 325
    :cond_9
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 328
    :goto_e
    const/4 v0, 0x1

    if-eqz p2, :cond_17

    .line 329
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_1c

    .line 331
    :cond_17
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 333
    :goto_1c
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 159
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 160
    return v0

    .line 162
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/SecurityParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 163
    return v2

    .line 165
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 167
    .local v1, "that":Landroid/net/wifi/SecurityParams;
    iget v3, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    iget v4, v1, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    if-eq v3, v4, :cond_14

    return v2

    .line 168
    :cond_14
    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    if-eq v3, v4, :cond_1b

    return v2

    .line 169
    :cond_1b
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    return v2

    .line 170
    :cond_26
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    return v2

    .line 171
    :cond_31
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    return v2

    .line 172
    :cond_3c
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    return v2

    .line 173
    :cond_47
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    return v2

    .line 174
    :cond_52
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 175
    return v2

    .line 177
    :cond_5d
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    return v2

    .line 178
    :cond_68
    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    iget-boolean v4, v1, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    if-eq v3, v4, :cond_6f

    return v2

    .line 179
    :cond_6f
    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    iget-boolean v4, v1, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    if-eq v3, v4, :cond_76

    return v2

    .line 180
    :cond_76
    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    iget-boolean v4, v1, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    if-eq v3, v4, :cond_7d

    return v2

    .line 181
    :cond_7d
    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    iget-boolean v4, v1, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    if-eq v3, v4, :cond_84

    return v2

    .line 183
    :cond_84
    return v0
.end method

.method public blacklist getAllowedAuthAlgorithms()Ljava/util/BitSet;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public blacklist getAllowedGroupCiphers()Ljava/util/BitSet;
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public blacklist getAllowedGroupManagementCiphers()Ljava/util/BitSet;
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public blacklist getAllowedKeyManagement()Ljava/util/BitSet;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public blacklist getAllowedPairwiseCiphers()Ljava/util/BitSet;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public blacklist getAllowedProtocols()Ljava/util/BitSet;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public blacklist getAllowedSuiteBCiphers()Ljava/util/BitSet;
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public blacklist getSecurityType()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 15

    .line 188
    iget v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    iget-object v4, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    iget-object v5, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    iget-object v8, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    iget-object v9, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 188
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAddedByAutoUpgrade()Z
    .registers 2

    .line 426
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    return v0
.end method

.method public blacklist isEnterpriseSecurityType()Z
    .registers 3

    .line 370
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 371
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 372
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 373
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 370
    :goto_2a
    return v0
.end method

.method public blacklist isOpenSecurityType()Z
    .registers 3

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 363
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const/4 v0, 0x1

    .line 362
    :cond_f
    return v0
.end method

.method public blacklist isRequirePmf()Z
    .registers 2

    .line 355
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    return v0
.end method

.method public blacklist isSaeH2eOnlyMode()Z
    .registers 2

    .line 391
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    return v0
.end method

.method public blacklist isSaePkOnlyMode()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    return v0
.end method

.method public blacklist isSameSecurityType(Landroid/net/wifi/SecurityParams;)Z
    .registers 4
    .param p1, "params"    # Landroid/net/wifi/SecurityParams;

    .line 221
    iget v0, p1, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    iget v1, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSecurityType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 211
    iget v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist setEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 246
    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    .line 247
    return-void
.end method

.method public blacklist setIsAddedByAutoUpgrade(Z)V
    .registers 2
    .param p1, "addedByAutoUpgrade"    # Z

    .line 417
    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    .line 418
    return-void
.end method

.method public blacklist setRequirePmf(Z)V
    .registers 2
    .param p1, "required"    # Z

    .line 348
    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 349
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "Security Parameters:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, " Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, " Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, " KeyMgmt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_30
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->size()I

    move-result v3

    const-string v4, "??"

    const-string v5, " "

    if-ge v1, v3, :cond_5a

    .line 437
    iget-object v3, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 438
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_54

    .line 440
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 442
    :cond_54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 446
    .end local v1    # "k":I
    :cond_5a
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    const-string v3, " Protocols:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_65
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v3, v6, :cond_8b

    .line 449
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 450
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    sget-object v6, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_85

    .line 452
    sget-object v6, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    .line 454
    :cond_85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_88
    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 458
    .end local v3    # "p":I
    :cond_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    const-string v3, " AuthAlgorithms:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_94
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v3, v6, :cond_ba

    .line 461
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 462
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    sget-object v6, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_b4

    .line 464
    sget-object v6, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 466
    :cond_b4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_b7
    :goto_b7
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 470
    .end local v3    # "a":I
    :cond_ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    const-string v3, " PairwiseCiphers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const/4 v3, 0x0

    .local v3, "pc":I
    :goto_c3
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v3, v6, :cond_e9

    .line 473
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 474
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    sget-object v6, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_e3

    .line 476
    sget-object v6, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e6

    .line 478
    :cond_e3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_e6
    :goto_e6
    add-int/lit8 v3, v3, 0x1

    goto :goto_c3

    .line 482
    .end local v3    # "pc":I
    :cond_e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    const-string v3, " GroupCiphers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/4 v3, 0x0

    .local v3, "gc":I
    :goto_f2
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v3, v6, :cond_118

    .line 485
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_115

    .line 486
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_112

    .line 488
    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_115

    .line 490
    :cond_112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_115
    :goto_115
    add-int/lit8 v3, v3, 0x1

    goto :goto_f2

    .line 494
    .end local v3    # "gc":I
    :cond_118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    const-string v3, " GroupMgmtCiphers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const/4 v3, 0x0

    .local v3, "gmc":I
    :goto_121
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v3, v6, :cond_147

    .line 497
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 498
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_141

    .line 500
    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_144

    .line 502
    :cond_141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_144
    :goto_144
    add-int/lit8 v3, v3, 0x1

    goto :goto_121

    .line 506
    .end local v3    # "gmc":I
    :cond_147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    const-string v3, " SuiteBCiphers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/4 v3, 0x0

    .local v3, "sbc":I
    :goto_150
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->size()I

    move-result v6

    if-ge v3, v6, :cond_176

    .line 509
    iget-object v6, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_173

    .line 510
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    sget-object v6, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_170

    .line 512
    sget-object v6, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_173

    .line 514
    :cond_170
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_173
    :goto_173
    add-int/lit8 v3, v3, 0x1

    goto :goto_150

    .line 518
    .end local v3    # "sbc":I
    :cond_176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    const-string v3, " RequirePmf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    const-string v1, " IsAddedByAutoUpgrade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v1, " IsSaeH2eOnlyMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, " IsSaePkOnlyMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateLegacyWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 230
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 231
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 232
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 233
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 234
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 235
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 236
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 237
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 238
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 556
    iget v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 558
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 559
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 560
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 561
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 562
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 563
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 564
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 565
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 566
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 567
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 568
    iget-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 570
    return-void
.end method
