.class public Landroid/icu/impl/coll/CollationKeys$LevelCallback;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LevelCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist needToWrite(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 150
    const/4 v0, 0x1

    return v0
.end method
