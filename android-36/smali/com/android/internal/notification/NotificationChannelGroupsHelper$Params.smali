.class public final Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;
.super Ljava/lang/Record;
.source "NotificationChannelGroupsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/notification/NotificationChannelGroupsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "includeDeleted",
        "includeNonGrouped",
        "includeEmpty",
        "includeAllBlockedWithFilter",
        "channelFilter"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Set<",
                "Ljava/lang/String;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        Z,
        Z,
        Z,
        Z,
        Ljava/util/Set;
    }
.end annotation


# instance fields
.field private final blacklist channelFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist includeAllBlockedWithFilter:Z

.field private final blacklist includeDeleted:Z

.field private final blacklist includeEmpty:Z

.field private final blacklist includeNonGrouped:Z


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeDeleted:Z

    iget-boolean v1, p1, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeDeleted:Z

    if-ne v0, v1, :cond_2a

    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeNonGrouped:Z

    iget-boolean v1, p1, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeNonGrouped:Z

    if-ne v0, v1, :cond_2a

    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeEmpty:Z

    iget-boolean v1, p1, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeEmpty:Z

    if-ne v0, v1, :cond_2a

    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeAllBlockedWithFilter:Z

    iget-boolean v1, p1, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeAllBlockedWithFilter:Z

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->channelFilter:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->channelFilter:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 6

    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeDeleted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeNonGrouped:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeEmpty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeAllBlockedWithFilter:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->channelFilter:Ljava/util/Set;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetchannelFilter(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->channelFilter:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetincludeAllBlockedWithFilter(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeAllBlockedWithFilter:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetincludeDeleted(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeDeleted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetincludeEmpty(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeEmpty:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetincludeNonGrouped(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeNonGrouped:Z

    return p0
.end method

.method public constructor blacklist <init>(ZZZZLjava/util/Set;)V
    .registers 6
    .param p1, "includeDeleted"    # Z
    .param p2, "includeNonGrouped"    # Z
    .param p3, "includeEmpty"    # Z
    .param p4, "includeAllBlockedWithFilter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "includeDeleted",
            "includeNonGrouped",
            "includeEmpty",
            "includeAllBlockedWithFilter",
            "channelFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p5, "channelFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeDeleted:Z

    iput-boolean p2, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeNonGrouped:Z

    iput-boolean p3, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeEmpty:Z

    iput-boolean p4, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeAllBlockedWithFilter:Z

    iput-object p5, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->channelFilter:Ljava/util/Set;

    return-void
.end method

.method public static blacklist forAllChannels(Z)Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;
    .registers 7
    .param p0, "includeDeleted"    # Z

    .line 87
    new-instance v0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v1, p0

    .end local p0    # "includeDeleted":Z
    .local v1, "includeDeleted":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;-><init>(ZZZZLjava/util/Set;)V

    return-object v0
.end method

.method public static blacklist forAllGroups()Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;
    .registers 6

    .line 71
    new-instance v0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;-><init>(ZZZZLjava/util/Set;)V

    return-object v0
.end method

.method public static blacklist onlySpecifiedOrBlockedChannels(Ljava/util/Set;)Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;"
        }
    .end annotation

    .line 101
    .local p0, "channelFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v5, p0

    .end local p0    # "channelFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "channelFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;-><init>(ZZZZLjava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public blacklist channelFilter()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->channelFilter:Ljava/util/Set;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeDeleted:Z

    iget-boolean v1, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeNonGrouped:Z

    iget-boolean v2, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeEmpty:Z

    iget-boolean v3, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeAllBlockedWithFilter:Z

    iget-object v4, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->channelFilter:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params$$ExternalSyntheticRecord0;->m(ZZZZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist includeAllBlockedWithFilter()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeAllBlockedWithFilter:Z

    return v0
.end method

.method public blacklist includeDeleted()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeDeleted:Z

    return v0
.end method

.method public blacklist includeEmpty()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeEmpty:Z

    return v0
.end method

.method public blacklist includeNonGrouped()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->includeNonGrouped:Z

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 58
    invoke-direct {p0}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    const-string v2, "includeDeleted;includeNonGrouped;includeEmpty;includeAllBlockedWithFilter;channelFilter"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
