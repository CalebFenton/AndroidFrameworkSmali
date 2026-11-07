.class public Ljava/nio/channels/FileChannel$MapMode;
.super Ljava/lang/Object;
.source "FileChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/FileChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapMode"
.end annotation


# static fields
.field public static final whitelist test-api PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

.field public static final whitelist test-api READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

.field public static final whitelist test-api READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;


# instance fields
.field private final greylist-max-o name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 805
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string v1, "READ_ONLY"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 811
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string v1, "READ_WRITE"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    .line 817
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-object p1, p0, Ljava/nio/channels/FileChannel$MapMode;->name:Ljava/lang/String;

    .line 824
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 832
    iget-object v0, p0, Ljava/nio/channels/FileChannel$MapMode;->name:Ljava/lang/String;

    return-object v0
.end method
