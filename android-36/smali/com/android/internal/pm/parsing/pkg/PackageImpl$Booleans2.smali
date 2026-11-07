.class Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans2;
.super Ljava/lang/Object;
.source "PackageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pm/parsing/pkg/PackageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Booleans2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans2$Flags;
    }
.end annotation


# static fields
.field private static final blacklist APEX:J = 0x2L

.field private static final blacklist STUB:J = 0x1L

.field private static final blacklist UPDATABLE_SYSTEM:J = 0x4L


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 3929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
