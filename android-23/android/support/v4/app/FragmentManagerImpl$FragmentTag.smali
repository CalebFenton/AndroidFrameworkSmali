.class Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentTag"
.end annotation


# static fields
.field public static final Fragment:[I

.field public static final Fragment_id:I = 0x1

.field public static final Fragment_name:I = 0x0

.field public static final Fragment_tag:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 2280
    const v0, 0x1010003

    #@3
    const v1, 0x10100d0

    #@6
    const v2, 0x10100d1

    #@9
    .line 2279
    filled-new-array {v0, v1, v2}, [I

    #@c
    move-result-object v0

    #@d
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    #@f
    .line 2278
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
