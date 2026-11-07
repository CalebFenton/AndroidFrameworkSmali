.class public Ljava/nio/charset/CodingErrorAction;
.super Ljava/lang/Object;
.source "CodingErrorAction.java"


# static fields
.field public static final whitelist test-api IGNORE:Ljava/nio/charset/CodingErrorAction;

.field public static final whitelist test-api REPLACE:Ljava/nio/charset/CodingErrorAction;

.field public static final whitelist test-api REPORT:Ljava/nio/charset/CodingErrorAction;


# instance fields
.field private greylist-max-o name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    .line 63
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 72
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string v1, "REPORT"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ljava/nio/charset/CodingErrorAction;->name:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Ljava/nio/charset/CodingErrorAction;->name:Ljava/lang/String;

    return-object v0
.end method
