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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method needToWrite(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 138
    const/4 v0, 0x1

    #@1
    return v0
.end method
