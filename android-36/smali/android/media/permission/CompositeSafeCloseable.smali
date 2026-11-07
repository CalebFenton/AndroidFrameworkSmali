.class Landroid/media/permission/CompositeSafeCloseable;
.super Ljava/lang/Object;
.source "CompositeSafeCloseable.java"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# instance fields
.field private final blacklist mChildren:[Landroid/media/permission/SafeCloseable;


# direct methods
.method varargs constructor blacklist <init>([Landroid/media/permission/SafeCloseable;)V
    .registers 2
    .param p1, "children"    # [Landroid/media/permission/SafeCloseable;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/media/permission/CompositeSafeCloseable;->mChildren:[Landroid/media/permission/SafeCloseable;

    .line 31
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 36
    iget-object v0, p0, Landroid/media/permission/CompositeSafeCloseable;->mChildren:[Landroid/media/permission/SafeCloseable;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_11

    .line 37
    iget-object v1, p0, Landroid/media/permission/CompositeSafeCloseable;->mChildren:[Landroid/media/permission/SafeCloseable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 39
    .end local v0    # "i":I
    :cond_11
    return-void
.end method
