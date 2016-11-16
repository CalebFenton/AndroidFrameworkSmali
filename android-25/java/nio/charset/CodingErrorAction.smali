.class public Ljava/nio/charset/CodingErrorAction;
.super Ljava/lang/Object;
.source "CodingErrorAction.java"


# static fields
.field public static final IGNORE:Ljava/nio/charset/CodingErrorAction;

.field public static final REPLACE:Ljava/nio/charset/CodingErrorAction;

.field public static final REPORT:Ljava/nio/charset/CodingErrorAction;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 56
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    #@2
    const-string/jumbo v1, "IGNORE"

    #@5
    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 55
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    #@a
    .line 64
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    #@c
    const-string/jumbo v1, "REPLACE"

    #@f
    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    #@12
    .line 63
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@14
    .line 73
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    #@16
    const-string/jumbo v1, "REPORT"

    #@19
    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    #@1c
    .line 72
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@1e
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Ljava/nio/charset/CodingErrorAction;->name:Ljava/lang/String;

    #@5
    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Ljava/nio/charset/CodingErrorAction;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
