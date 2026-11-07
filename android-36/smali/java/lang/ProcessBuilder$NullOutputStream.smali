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
.field static final greylist-max-o INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 430
    new-instance v0, Ljava/lang/ProcessBuilder$NullOutputStream;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$NullOutputStream;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 431
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
