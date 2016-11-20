.class public final Landroid/system/StructPasswd;
.super Ljava/lang/Object;
.source "StructPasswd.java"


# instance fields
.field public final pw_dir:Ljava/lang/String;

.field public final pw_gid:I

.field public final pw_name:Ljava/lang/String;

.field public final pw_shell:Ljava/lang/String;

.field public final pw_uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw_name"    # Ljava/lang/String;
    .param p2, "pw_uid"    # I
    .param p3, "pw_gid"    # I
    .param p4, "pw_dir"    # Ljava/lang/String;
    .param p5, "pw_shell"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    #@5
    .line 39
    iput p2, p0, Landroid/system/StructPasswd;->pw_uid:I

    #@7
    .line 40
    iput p3, p0, Landroid/system/StructPasswd;->pw_gid:I

    #@9
    .line 41
    iput-object p4, p0, Landroid/system/StructPasswd;->pw_dir:Ljava/lang/String;

    #@b
    .line 42
    iput-object p5, p0, Landroid/system/StructPasswd;->pw_shell:Ljava/lang/String;

    #@d
    .line 37
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 46
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
