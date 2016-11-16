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
.field public alias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/String;

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 243
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;->alias:Ljava/lang/String;

    #@5
    .line 242
    return-void
.end method
