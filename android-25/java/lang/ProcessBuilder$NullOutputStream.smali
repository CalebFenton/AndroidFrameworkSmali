.class Ljava/lang/ProcessBuilder$NullOutputStream;
.super Ljava/io/OutputStream;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullOutputStream"
.end annotation


# static fields
.field static final INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 365
    new-instance v0, Ljava/lang/ProcessBuilder$NullOutputStream;

    #@2
    invoke-direct {v0}, Ljava/lang/ProcessBuilder$NullOutputStream;-><init>()V

    #@5
    sput-object v0, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    #@7
    .line 364
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 366
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 368
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "Stream closed"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
