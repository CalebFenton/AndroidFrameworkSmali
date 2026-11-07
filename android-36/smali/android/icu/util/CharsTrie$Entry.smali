.class public final Landroid/icu/util/CharsTrie$Entry;
.super Ljava/lang/Object;
.source "CharsTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public greylist-max-o chars:Ljava/lang/CharSequence;

.field public greylist-max-o value:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/CharsTrie-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Entry;-><init>()V

    return-void
.end method
