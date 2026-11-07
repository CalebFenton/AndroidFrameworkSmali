.class public Landroid/app/UiAutomationConnection$Repeater;
.super Ljava/lang/Object;
.source "UiAutomationConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiAutomationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Repeater"
.end annotation


# instance fields
.field private final greylist-max-o readFrom:Ljava/io/InputStream;

.field private final greylist-max-o writeTo:Ljava/io/OutputStream;


# direct methods
.method public constructor blacklist <init>(Landroid/app/UiAutomationConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/UiAutomationConnection;
    .param p2, "readFrom"    # Ljava/io/InputStream;
    .param p3, "writeTo"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p2, p0, Landroid/app/UiAutomationConnection$Repeater;->readFrom:Ljava/io/InputStream;

    .line 510
    iput-object p3, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    .line 511
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 515
    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    .line 518
    .local v0, "buffer":[B
    :goto_4
    iget-object v1, p0, Landroid/app/UiAutomationConnection$Repeater;->readFrom:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 519
    .local v1, "readByteCount":I
    if-gez v1, :cond_d

    .line 520
    goto :goto_26

    .line 522
    :cond_d
    iget-object v2, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 523
    iget-object v2, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_25
    .catchall {:try_start_2 .. :try_end_18} :catchall_19

    goto :goto_4

    .line 527
    .end local v0    # "buffer":[B
    .end local v1    # "readByteCount":I
    :catchall_19
    move-exception v0

    iget-object v1, p0, Landroid/app/UiAutomationConnection$Repeater;->readFrom:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 528
    iget-object v1, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 529
    throw v0

    .line 525
    :catch_25
    move-exception v0

    .line 527
    :goto_26
    iget-object v0, p0, Landroid/app/UiAutomationConnection$Repeater;->readFrom:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 528
    iget-object v0, p0, Landroid/app/UiAutomationConnection$Repeater;->writeTo:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 529
    nop

    .line 530
    return-void
.end method
