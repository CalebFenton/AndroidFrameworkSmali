.class public final Landroid/system/StructPasswd;
.super Ljava/lang/Object;
.source "StructPasswd.java"


# instance fields
.field public final greylist-max-o pw_dir:Ljava/lang/String;

.field public final greylist-max-o pw_gid:I

.field public final greylist-max-o pw_name:Ljava/lang/String;

.field public final greylist-max-o pw_shell:Ljava/lang/String;

.field public final greylist-max-o pw_uid:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw_name"    # Ljava/lang/String;
    .param p2, "pw_uid"    # I
    .param p3, "pw_gid"    # I
    .param p4, "pw_dir"    # Ljava/lang/String;
    .param p5, "pw_shell"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    .line 39
    iput p2, p0, Landroid/system/StructPasswd;->pw_uid:I

    .line 40
    iput p3, p0, Landroid/system/StructPasswd;->pw_gid:I

    .line 41
    iput-object p4, p0, Landroid/system/StructPasswd;->pw_dir:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Landroid/system/StructPasswd;->pw_shell:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 46
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
