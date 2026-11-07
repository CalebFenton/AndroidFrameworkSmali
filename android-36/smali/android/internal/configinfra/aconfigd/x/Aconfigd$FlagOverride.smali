.class public final Landroid/internal/configinfra/aconfigd/x/Aconfigd$FlagOverride;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/configinfra/aconfigd/x/Aconfigd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlagOverride"
.end annotation


# static fields
.field public static final blacklist FLAG_NAME:J = 0x10900000002L

.field public static final blacklist FLAG_VALUE:J = 0x10900000003L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/configinfra/aconfigd/x/Aconfigd;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/configinfra/aconfigd/x/Aconfigd;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
