.class public final Landroid/internal/configinfra/aconfigd/x/Aconfigd$PersistStorageRecords;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/configinfra/aconfigd/x/Aconfigd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PersistStorageRecords"
.end annotation


# static fields
.field public static final blacklist RECORDS:J = 0x20b00000001L


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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
