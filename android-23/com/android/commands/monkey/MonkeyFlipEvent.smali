.class public Lcom/android/commands/monkey/MonkeyFlipEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyFlipEvent.java"


# static fields
.field private static final FLIP_0:[B

.field private static final FLIP_1:[B


# instance fields
.field private final mKeyboardOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 32
    new-array v0, v1, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_0:[B

    #@9
    .line 42
    new-array v0, v1, [B

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_1:[B

    #@10
    .line 27
    return-void

    #@11
    .line 32
    nop

    #@12
    :array_0
    .array-data 1
        0x7ft
        0x6t
        0x0t
        0x0t
        -0x20t
        0x39t
        0x1t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@1e
    .line 42
    :array_1
    .array-data 1
        -0x7bt
        0x6t
        0x0t
        0x0t
        -0x61t
        -0x5bt
        0xct
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "keyboardOpen"    # Z

    #@0
    .prologue
    .line 55
    const/4 v0, 0x5

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 56
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    #@6
    .line 54
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 6
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 61
    if-lez p3, :cond_0

    #@3
    .line 62
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, ":Sending Flip keyboardOpen="

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    iget-boolean v4, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e
    .line 67
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    #@20
    const-string/jumbo v2, "/dev/input/event0"

    #@23
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@26
    .line 68
    .local v1, "f":Ljava/io/FileOutputStream;
    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    #@28
    if-eqz v2, :cond_1

    #@2a
    sget-object v2, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_0:[B

    #@2c
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    #@2f
    .line 69
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    #@32
    .line 70
    const/4 v2, 0x1

    #@33
    return v2

    #@34
    .line 68
    :cond_1
    sget-object v2, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_1:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    goto :goto_0

    #@37
    .line 71
    .end local v1    # "f":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@38
    .line 72
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3a
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v4, "Got IOException performing flip"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 73
    return v5
.end method
