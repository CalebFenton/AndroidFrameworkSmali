.class Landroid/renderscript/Font$FontFamily;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontFamily"
.end annotation


# instance fields
.field greylist-max-o mBoldFileName:Ljava/lang/String;

.field greylist-max-o mBoldItalicFileName:Ljava/lang/String;

.field greylist-max-o mItalicFileName:Ljava/lang/String;

.field greylist-max-o mNames:[Ljava/lang/String;

.field greylist-max-o mNormalFileName:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/renderscript/Font-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/renderscript/Font$FontFamily;-><init>()V

    return-void
.end method
