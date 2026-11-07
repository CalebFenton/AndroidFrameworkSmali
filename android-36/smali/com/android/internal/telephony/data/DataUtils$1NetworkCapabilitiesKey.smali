.class final Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;
.super Ljava/lang/Record;
.source "DataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataUtils;->getGroupedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NetworkCapabilitiesKey"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "caps",
        "enterpriseIds",
        "transportTypes"
    }
    componentSignatures = {
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Set<",
                "Ljava/lang/Integer;",
                ">;"
            }
        .end subannotation,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Set<",
                "Ljava/lang/Integer;",
                ">;"
            }
        .end subannotation,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Set<",
                "Ljava/lang/Integer;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        Ljava/util/Set;,
        Ljava/util/Set;,
        Ljava/util/Set;
    }
.end annotation


# instance fields
.field private final blacklist caps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist enterpriseIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist transportTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;

    if-eqz v0, :cond_26

    check-cast p1, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->caps:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->caps:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->enterpriseIds:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->enterpriseIds:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->transportTypes:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->transportTypes:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->caps:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->enterpriseIds:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->transportTypes:Ljava/util/Set;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "caps",
            "enterpriseIds",
            "transportTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->caps:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->enterpriseIds:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->transportTypes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public blacklist caps()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->caps:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist enterpriseIds()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->enterpriseIds:Ljava/util/Set;

    return-object p0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 407
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->caps:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->enterpriseIds:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->transportTypes:Ljava/util/Set;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 407
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;

    const-string v1, "caps;enterpriseIds;transportTypes"

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist transportTypes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;->transportTypes:Ljava/util/Set;

    return-object p0
.end method
