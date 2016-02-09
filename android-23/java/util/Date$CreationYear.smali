.class Ljava/util/Date$CreationYear;
.super Ljava/lang/Object;
.source "Date.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Date;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreationYear"
.end annotation


# static fields
.field private static final VALUE:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Ljava/util/Date$CreationYear;->VALUE:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    #@8
    move-result v0

    #@9
    sput v0, Ljava/util/Date$CreationYear;->VALUE:I

    #@b
    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
