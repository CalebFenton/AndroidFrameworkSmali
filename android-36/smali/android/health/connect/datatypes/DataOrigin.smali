.class public final Landroid/health/connect/datatypes/DataOrigin;
.super Ljava/lang/Object;
.source "DataOrigin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/DataOrigin$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/health/connect/datatypes/DataOrigin;->mPackageName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/health/connect/datatypes/DataOrigin-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/datatypes/DataOrigin;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 76
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 77
    :cond_4
    instance-of v0, p1, Landroid/health/connect/datatypes/DataOrigin;

    if-eqz v0, :cond_18

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/DataOrigin;

    .line 79
    .local v0, "other":Landroid/health/connect/datatypes/DataOrigin;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 81
    .end local v0    # "other":Landroid/health/connect/datatypes/DataOrigin;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/health/connect/datatypes/DataOrigin;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 91
    invoke-virtual {p0}, Landroid/health/connect/datatypes/DataOrigin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
