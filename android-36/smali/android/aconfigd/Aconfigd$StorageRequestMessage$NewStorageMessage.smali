.class public final Landroid/aconfigd/Aconfigd$StorageRequestMessage$NewStorageMessage;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfigd/Aconfigd$StorageRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NewStorageMessage"
.end annotation


# static fields
.field public static final blacklist CONTAINER:J = 0x10900000001L

.field public static final blacklist FLAG_INFO:J = 0x10900000005L

.field public static final blacklist FLAG_MAP:J = 0x10900000003L

.field public static final blacklist FLAG_VALUE:J = 0x10900000004L

.field public static final blacklist PACKAGE_MAP:J = 0x10900000002L


# direct methods
.method public constructor blacklist <init>(Landroid/aconfigd/Aconfigd$StorageRequestMessage;)V
    .registers 2
    .param p1, "this$1"    # Landroid/aconfigd/Aconfigd$StorageRequestMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
