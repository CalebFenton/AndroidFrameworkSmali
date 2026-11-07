.class public Landroid/text/Spannable$Factory;
.super Ljava/lang/Object;
.source "Spannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Spannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static greylist-max-o sInstance:Landroid/text/Spannable$Factory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/text/Spannable$Factory;

    invoke-direct {v0}, Landroid/text/Spannable$Factory;-><init>()V

    sput-object v0, Landroid/text/Spannable$Factory;->sInstance:Landroid/text/Spannable$Factory;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/Spannable$Factory;
    .registers 1

    .line 75
    sget-object v0, Landroid/text/Spannable$Factory;->sInstance:Landroid/text/Spannable$Factory;

    return-object v0
.end method


# virtual methods
.method public whitelist newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 83
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
