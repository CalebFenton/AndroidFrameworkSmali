.class Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
.super Ljava/lang/Object;
.source "NetscapeCertTypeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/NetscapeCertTypeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapEntry"
.end annotation


# instance fields
.field blacklist mName:Ljava/lang/String;

.field blacklist mPosition:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    .line 95
    iput p2, p0, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mPosition:I

    .line 96
    return-void
.end method
