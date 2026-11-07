.class Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;
.super Ljava/lang/Object;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraApkSpec"
.end annotation


# instance fields
.field public final blacklist apk:Ljava/io/File;

.field public final blacklist idsig:Ljava/io/File;


# direct methods
.method constructor blacklist <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p1, "apk"    # Ljava/io/File;
    .param p2, "idsig"    # Ljava/io/File;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->apk:Ljava/io/File;

    .line 396
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->idsig:Ljava/io/File;

    .line 397
    return-void
.end method
