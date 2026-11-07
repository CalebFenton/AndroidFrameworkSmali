.class public final synthetic Llibcore/util/ZoneInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Llibcore/util/ZoneInfo$FieldSetter;


# instance fields
.field public final synthetic blacklist f$0:Llibcore/util/ZoneInfo;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Llibcore/util/ZoneInfo;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda1;->f$0:Llibcore/util/ZoneInfo;

    iput-boolean p2, p0, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final blacklist set(Ljava/lang/reflect/Field;)V
    .registers 4

    .line 0
    iget-object v0, p0, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda1;->f$0:Llibcore/util/ZoneInfo;

    iget-boolean v1, p0, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1}, Llibcore/util/ZoneInfo;->$r8$lambda$PNAtxCwTTPW1Cto496nUHaBUjDo(Llibcore/util/ZoneInfo;ZLjava/lang/reflect/Field;)V

    return-void
.end method
