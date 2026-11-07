.class public final Landroid/aconfigd/Aconfigd$StorageRequestMessage$FlagQueryMessage;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfigd/Aconfigd$StorageRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlagQueryMessage"
.end annotation


# static fields
.field public static final blacklist FLAG_NAME:J = 0x10900000002L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000001L


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

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
