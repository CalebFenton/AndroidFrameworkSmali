.class public Ljava/nio/charset/CodingErrorAction;
.super Ljava/lang/Object;
.source "CodingErrorAction.java"


# static fields
.field public static final IGNORE:Ljava/nio/charset/CodingErrorAction;

.field public static final REPLACE:Ljava/nio/charset/CodingErrorAction;

.field public static final REPORT:Ljava/nio/charset/CodingErrorAction;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 29
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    #@2
    .line 30
    const-string/jumbo v1, "IGNORE"

    #@5
    .line 29
    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    #@a
    .line 36
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 37
    const-string/jumbo v1, "REPLACE"

    #@f
    .line 36
    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@14
    .line 44
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    #@16
    .line 45
    const-string/jumbo v1, "REPORT"

    #@19
    .line 44
    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@1e
    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Ljava/nio/charset/CodingErrorAction;->action:Ljava/lang/String;

    #@5
    .line 53
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Action: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/nio/charset/CodingErrorAction;->action:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
