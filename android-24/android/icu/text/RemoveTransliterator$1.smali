.class final Landroid/icu/text/RemoveTransliterator$1;
.super Ljava/lang/Object;
.source "RemoveTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/RemoveTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    new-instance v0, Landroid/icu/text/RemoveTransliterator;

    #@2
    invoke-direct {v0}, Landroid/icu/text/RemoveTransliterator;-><init>()V

    #@5
    return-object v0
.end method
