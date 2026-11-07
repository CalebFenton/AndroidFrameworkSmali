.class public abstract Landroid/app/admin/PolicyValue;
.super Ljava/lang/Object;
.source "PolicyValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field private blacklist mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 36
    .local p0, "this":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PolicyValue;->mValue:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 40
    .local p0, "this":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    iget-object v0, p0, Landroid/app/admin/PolicyValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Landroid/app/admin/PolicyValue;->mValue:Ljava/lang/Object;

    .line 45
    return-void
.end method
