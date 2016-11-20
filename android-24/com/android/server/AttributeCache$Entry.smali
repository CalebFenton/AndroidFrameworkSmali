.class public final Lcom/android/server/AttributeCache$Entry;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final array:Landroid/content/res/TypedArray;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@5
    .line 63
    iput-object p2, p0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@7
    .line 61
    return-void
.end method


# virtual methods
.method recycle()V
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 68
    iget-object v0, p0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@9
    .line 66
    :cond_0
    return-void
.end method
