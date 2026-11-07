.class public final Landroid/content/Intent$FilterComparison;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterComparison"
.end annotation


# instance fields
.field private final greylist-max-o mHashCode:I

.field private final greylist-max-o mIntent:Landroid/content/Intent;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 11795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11796
    iput-object p1, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    .line 11797
    invoke-virtual {p1}, Landroid/content/Intent;->filterHashCode()I

    move-result v0

    iput v0, p0, Landroid/content/Intent$FilterComparison;->mHashCode:I

    .line 11798
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 11811
    instance-of v0, p1, Landroid/content/Intent$FilterComparison;

    if-eqz v0, :cond_10

    .line 11812
    move-object v0, p1

    check-cast v0, Landroid/content/Intent$FilterComparison;

    iget-object v0, v0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    .line 11813
    .local v0, "other":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 11815
    .end local v0    # "other":Landroid/content/Intent;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 11806
    iget-object v0, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 11820
    iget v0, p0, Landroid/content/Intent$FilterComparison;->mHashCode:I

    return v0
.end method
