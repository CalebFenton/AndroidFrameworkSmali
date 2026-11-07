.class public Landroid/adservices/adselection/AdSelectionOutcome;
.super Ljava/lang/Object;
.source "AdSelectionOutcome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionOutcome$Builder;
    }
.end annotation


# static fields
.field public static final whitelist NO_OUTCOME:Landroid/adservices/adselection/AdSelectionOutcome;

.field public static final blacklist UNSET_AD_SELECTION_ID:I = 0x0

.field public static final blacklist UNSET_AD_SELECTION_ID_MESSAGE:Ljava/lang/String; = "Non-zero ad selection ID must be set"


# instance fields
.field private final blacklist mAdSelectionId:J

.field private final blacklist mComponentAdUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRenderUri:Landroid/net/Uri;

.field private final blacklist mWinningSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/adservices/adselection/AdSelectionOutcome;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionOutcome;-><init>()V

    sput-object v0, Landroid/adservices/adselection/AdSelectionOutcome;->NO_OUTCOME:Landroid/adservices/adselection/AdSelectionOutcome;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mAdSelectionId:J

    .line 63
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mRenderUri:Landroid/net/Uri;

    .line 64
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->UNSET_AD_TECH_IDENTIFIER:Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 65
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mComponentAdUris:Ljava/util/List;

    .line 66
    return-void
.end method

.method private constructor blacklist <init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;)V
    .registers 7
    .param p1, "adSelectionId"    # J
    .param p3, "renderUri"    # Landroid/net/Uri;
    .param p4, "winningSeller"    # Landroid/adservices/common/AdTechIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/net/Uri;",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p5, "componentAdUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mAdSelectionId:J

    .line 74
    const-string v0, "Render uri cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mRenderUri:Landroid/net/Uri;

    .line 75
    const-string v0, "Winning seller cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 76
    nop

    .line 77
    const-string v0, "Component ad uris cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mComponentAdUris:Ljava/util/List;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;Landroid/adservices/adselection/AdSelectionOutcome-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/adservices/adselection/AdSelectionOutcome;-><init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    instance-of v0, p1, Landroid/adservices/adselection/AdSelectionOutcome;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 128
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/AdSelectionOutcome;

    .line 129
    .local v0, "adSelectionOutcome":Landroid/adservices/adselection/AdSelectionOutcome;
    iget-wide v2, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mAdSelectionId:J

    iget-wide v4, v0, Landroid/adservices/adselection/AdSelectionOutcome;->mAdSelectionId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mRenderUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/adservices/adselection/AdSelectionOutcome;->mRenderUri:Landroid/net/Uri;

    .line 130
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, v0, Landroid/adservices/adselection/AdSelectionOutcome;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 131
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mComponentAdUris:Ljava/util/List;

    iget-object v3, v0, Landroid/adservices/adselection/AdSelectionOutcome;->mComponentAdUris:Ljava/util/List;

    .line 132
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    nop

    .line 129
    :goto_31
    return v1

    .line 134
    .end local v0    # "adSelectionOutcome":Landroid/adservices/adselection/AdSelectionOutcome;
    :cond_32
    return v1
.end method

.method public whitelist getAdSelectionId()J
    .registers 3

    .line 89
    iget-wide v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mAdSelectionId:J

    return-wide v0
.end method

.method public whitelist getComponentAdUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mComponentAdUris:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRenderUri()Landroid/net/Uri;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mRenderUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getWinningSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist hasOutcome()Z
    .registers 2

    .line 122
    sget-object v0, Landroid/adservices/adselection/AdSelectionOutcome;->NO_OUTCOME:Landroid/adservices/adselection/AdSelectionOutcome;

    invoke-virtual {p0, v0}, Landroid/adservices/adselection/AdSelectionOutcome;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 139
    iget-wide v0, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mAdSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mRenderUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionOutcome;->mComponentAdUris:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
