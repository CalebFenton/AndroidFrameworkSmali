.class public abstract Lcom/android/internal/flags/CoreFlags;
.super Ljava/lang/Object;
.source "CoreFlags.java"


# static fields
.field public static blacklist BOOL_FLAG:Landroid/flags/BooleanFlag;

.field public static blacklist DYN_FLAG:Landroid/flags/DynamicBooleanFlag;

.field public static blacklist OFF_FLAG:Landroid/flags/FusedOffFlag;

.field public static blacklist ON_FLAG:Landroid/flags/FusedOnFlag;

.field private static final blacklist sKnownFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/flags/SyncableFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    .line 41
    const-string v0, "bool_flag"

    const/4 v1, 0x0

    const-string v2, "core"

    invoke-static {v2, v0, v1}, Lcom/android/internal/flags/CoreFlags;->booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->BOOL_FLAG:Landroid/flags/BooleanFlag;

    .line 42
    const-string v0, "off_flag"

    invoke-static {v2, v0}, Lcom/android/internal/flags/CoreFlags;->fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->OFF_FLAG:Landroid/flags/FusedOffFlag;

    .line 43
    const-string v0, "on_flag"

    invoke-static {v2, v0}, Lcom/android/internal/flags/CoreFlags;->fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->ON_FLAG:Landroid/flags/FusedOnFlag;

    .line 44
    const-string v0, "dyn_flag"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/android/internal/flags/CoreFlags;->dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->DYN_FLAG:Landroid/flags/DynamicBooleanFlag;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;
    .registers 8
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 62
    invoke-static {p0, p1, p2}, Landroid/flags/FeatureFlags;->booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;

    move-result-object v0

    .line 64
    .local v0, "f":Landroid/flags/BooleanFlag;
    sget-object v1, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    new-instance v2, Landroid/flags/SyncableFlag;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v0
.end method

.method private static blacklist dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;
    .registers 8
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 87
    invoke-static {p0, p1, p2}, Landroid/flags/FeatureFlags;->dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;

    move-result-object v0

    .line 89
    .local v0, "f":Landroid/flags/DynamicBooleanFlag;
    sget-object v1, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    new-instance v2, Landroid/flags/SyncableFlag;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method private static blacklist fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;
    .registers 7
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 70
    invoke-static {p0, p1}, Landroid/flags/FeatureFlags;->fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;

    move-result-object v0

    .line 72
    .local v0, "f":Landroid/flags/FusedOffFlag;
    sget-object v1, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    new-instance v2, Landroid/flags/SyncableFlag;

    const-string v3, "false"

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method

.method private static blacklist fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;
    .registers 7
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 78
    invoke-static {p0, p1}, Landroid/flags/FeatureFlags;->fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;

    move-result-object v0

    .line 80
    .local v0, "f":Landroid/flags/FusedOnFlag;
    sget-object v1, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    new-instance v2, Landroid/flags/SyncableFlag;

    const-string/jumbo v3, "true"

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object v0
.end method

.method public static blacklist getCoreFlags()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/flags/SyncableFlag;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    return-object v0
.end method

.method public static blacklist isCoreFlag(Landroid/flags/SyncableFlag;)Z
    .registers 5
    .param p0, "flag"    # Landroid/flags/SyncableFlag;

    .line 48
    sget-object v0, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/SyncableFlag;

    .line 49
    .local v1, "knownFlag":Landroid/flags/SyncableFlag;
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 50
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 51
    const/4 v0, 0x1

    return v0

    .line 53
    .end local v1    # "knownFlag":Landroid/flags/SyncableFlag;
    :cond_30
    goto :goto_6

    .line 54
    :cond_31
    const/4 v0, 0x0

    return v0
.end method
