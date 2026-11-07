.class Landroid/icu/text/TransliteratorRegistry$AliasEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AliasEntry"
.end annotation


# instance fields
.field public greylist-max-o alias:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "a"    # Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;->alias:Ljava/lang/String;

    .line 274
    return-void
.end method
