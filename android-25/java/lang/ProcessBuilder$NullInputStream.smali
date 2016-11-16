.class Ljava/lang/ProcessBuilder$NullInputStream;
.super Ljava/io/InputStream;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullInputStream"
.end annotation


# static fields
.field static final INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 355
    new-instance v0, Ljava/lang/ProcessBuilder$NullInputStream;

    #@2
    invoke-direct {v0}, Ljava/lang/ProcessBuilder$NullInputStream;-><init>()V

    #@5
    sput-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    #@7
    .line 354
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 356
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    #@0
    .prologue
    .line 358
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 1

    #@0
    .prologue
    .line 357
    const/4 v0, -0x1

    #@1
    return v0
.end method
