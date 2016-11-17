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
.field public static final PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

.field public static final READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

.field public static final READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 618
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    #@2
    const-string/jumbo v1, "READ_ONLY"

    #@5
    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    #@8
    .line 617
    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@a
    .line 624
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    #@c
    const-string/jumbo v1, "READ_WRITE"

    #@f
    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    #@12
    .line 623
    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    #@14
    .line 630
    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    #@16
    const-string/jumbo v1, "PRIVATE"

    #@19
    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    #@1c
    .line 629
    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    #@1e
    .line 612
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 635
    iput-object p1, p0, Ljava/nio/channels/FileChannel$MapMode;->name:Ljava/lang/String;

    #@5
    .line 634
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Ljava/nio/channels/FileChannel$MapMode;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
